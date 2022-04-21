//
//  ContentView.swift
//  Shared
//
//  Created by orangeboy Chen on 2022/4/20.
//

import SwiftUI
import AuthenticationServices
struct ContentView: View {

    let authService = AuthService.instance

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
                SignInWithAppleButton(
                    onRequest: { _ in},
                    onCompletion: { result in
                        let auth = try? result.get()
                        guard let auth = auth else {
                            return
                        }

                        //Todo 请求的业务逻辑

                    }
                )
                .cornerRadius(10.0)
                .frame(height: 50)
                .padding(.horizontal)

                Spacer().frame(height: 40.0)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
