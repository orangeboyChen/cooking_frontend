//
// Created by orangeboy Chen on 2022/4/21.
//

import Foundation
import SwiftUI
import AuthenticationServices
struct LoginView: View {
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
