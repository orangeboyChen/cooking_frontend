//
// Created by orangeboy Chen on 2022/4/21.
//

import Foundation
import SwiftUI
import AuthenticationServices
import SwiftyJSON

struct LoginView: View {
    
    let authController = AuthController()
    
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
                            authController.signInWithApple { identityToken in
                                Api.login(identityToken: identityToken).responseJSON { response in
                                    print(response.value ?? "???")
                                    let responseValue:JSON=JSON(response.value)
                                    let responseData=responseValue["data"]
                                    let responseToken=responseData["token"].stringValue
                                    print(responseToken)
                                    UserDefaults.standard.set(responseToken, forKey: "token")
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

    var onReceiveToken: ((String) -> Void)? = nil

    func signInWithApple(_ onReceiveToken: @escaping (String) -> Void) {
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
        
        let fullNameData = auth.fullName
        
        let fullName=((fullNameData?.familyName ?? "") + (fullNameData?.givenName ?? ""))

        
        guard let identityTokenData = auth.identityToken, let identityToken = String(data: identityTokenData, encoding: .utf8) else {
            return
        }

        onReceiveToken!(identityToken)
    }
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        //error
    }
}

