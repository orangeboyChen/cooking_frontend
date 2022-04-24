//
// Created by orangeboy Chen on 2022/4/21.
//

import Foundation
import SwiftUI
import AuthenticationServices
import SwiftyJSON

struct userInfo:Codable,Hashable{
    var nickname:String
    var avatar:String
    var birthday:Int
    var gender:Int
    init()  {
        nickname = "nonickname"
        avatar = "noavatar"
        birthday = 0
        gender = 0
    }
}

var user=userInfo()

struct LoginView: View {
    
    
    let authController = AuthController()
    
    @AppStorage("token", store: UserDefaults.standard) var token = ""
    @AppStorage("isLogin", store: UserDefaults.standard) var isLogin = false
    
    
    @ObservedObject var viewModel: ContentViewModelView
    
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "faceid")
                    .font(.system(size: 100.0))
                    .padding()
                Text("赶快登录")
            }
            VStack {
                Spacer()
                SignUpWithAppleButton()
                    .onTapGesture {
                        print(viewModel.isLogin)
                        authController.signInWithApple { identityToken, fullName in
                            Api.login(identityToken: identityToken).responseString { response in
                                let json = JSON(parseJSON: response.value ?? "")
                                print(json)
                                if json["code"].intValue == 200 {
                                    let data = json["data"]
                                    token = data["token"].stringValue
                                    withAnimation {
                                        viewModel.isLogin = true
                                        isLogin=viewModel.isLogin
                                    }
                                    //user=Api.getUserInfo()
                                    if user.avatar == "noavatar"&&user.birthday == 0{
                                        withAnimation{
                                            viewModel.isSignUp = false
                                        }
                                    }
                                        
                                }
                            }
                        }
                    }
                    .cornerRadius(10.0)
                    .frame(height: 50)
                    .padding(.horizontal)
                
                Spacer().frame(height: 40.0)
            }
            
        }
    }
}

struct SignUpWithAppleButton: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ASAuthorizationAppleIDButton {
        ASAuthorizationAppleIDButton(type: .signIn, style: .black)
    }
    
    func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: Context) {}
}

class AuthController: NSObject {
    
    var onReceiveToken: ((String, String) -> Void)? = nil
    
    func signInWithApple(_ onReceiveToken: @escaping (String, String) -> Void) {
        self.onReceiveToken = onReceiveToken
        let request = ASAuthorizationAppleIDProvider().createRequest()
        request.requestedScopes = [.fullName, .email]
        
        let controller = ASAuthorizationController(authorizationRequests: [request])
        controller.delegate = self
        controller.performRequests()
    }
}

extension AuthController: ASAuthorizationControllerDelegate {
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        guard let auth = authorization.credential as? ASAuthorizationAppleIDCredential else {
            return
        }
        
        guard let identityTokenData = auth.identityToken, let identityToken = String(data: identityTokenData, encoding: .utf8) else {
            return
        }
        
        guard let fullNameData = auth.fullName else {
            return
        }
        
        let fullName = (fullNameData.familyName ?? "") + (fullNameData.givenName ?? "")
        if let onReceiveToken = onReceiveToken {
            onReceiveToken(identityToken, fullName)
        }
        
    }
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        //error
    }
}


