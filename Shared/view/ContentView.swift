//
//  ContentView.swift
//  Shared
//
//  Created by orangeboy Chen on 2022/4/20.
//

import SwiftUI
struct ContentView: View {
    
    let authService = AuthService.instance
    
    var body: some View {
        ZStack {
            LoginView()
            Button("qwe"){
                Api.getListType().responseString { response in
                    print(response.value ?? "???")
                }
                
            }
            .offset(y:-100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

