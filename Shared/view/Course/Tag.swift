//
//  Tag.swift
//  cookinglearning (iOS)
//
//  Created by Little Weak_duck on 2022/4/30.
//

import SwiftUI

struct Tag: View {
    var tagName:String
    var body: some View {
        Text(tagName)
            .font(.subheadline)
            .foregroundColor(.white)
            .padding(5)
            .background(.blue)
            .cornerRadius(20)
    }
}

struct tag_Previews: PreviewProvider {
    static var previews: some View {
        Tag(tagName: "吃的啊啊啊")
    }
}
