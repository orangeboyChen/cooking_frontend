//
//  IngredientView.swift
//  cookinglearning (iOS)
//
//  Created by Little Weak_duck on 2022/5/11.
//

import SwiftUI

struct IngredientView: View {
    var body: some View {
        ScrollView {
            Image("hongshaorou")
                .resizable()
                .height(200)
            VStack(alignment:.leading) {
                HStack {
                    Text("盐")
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                }
                Text("简介")
                Text("优点")
                Text("禁忌")
                
            }
            .padding()
        }
        .ignoresSafeArea()
        
    }
}

struct IngredientView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientView()
    }
}

