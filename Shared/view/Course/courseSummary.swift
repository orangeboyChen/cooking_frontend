//
//  courseSummary.swift
//  cookinglearning (iOS)
//
//  Created by Little Weak_duck on 2022/4/26.
//

import SwiftUI

struct courseSummary: View {
    var body: some View {
        HStack {
            VStack {
                HStack {
                    Text(" 菜名")
                        .font(.title)
                        .fontWeight(.black)
                    Spacer()
                }
                Text("菜品简介菜品简介菜品简介菜品简介菜品简介菜品简介菜品简介菜品简介菜品简介菜品简介菜品简介菜品简介菜品简介菜品简介")
                    .font(.subheadline)
                Spacer()
            }
            .frame(width: 260)
            Image("qwe")
                .resizable()

        }

    }
}

struct courseSummary_Previews: PreviewProvider {
    static var previews: some View {
        courseSummary()
    }
}


