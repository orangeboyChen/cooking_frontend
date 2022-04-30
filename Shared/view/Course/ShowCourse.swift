//
//  ShowCourse.swift
//  cookinglearning (iOS)
//
//  Created by Little Weak_duck on 2022/4/26.
//

import SwiftUI

struct ShowCourse: View {
    var body: some View {
        ZStack (alignment: .bottom){
            Image("hongshaorou")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:300, height: 200)
                .clipped()
                .cornerRadius(25)
            Image(systemName: "heart.fill")
                .resizable()
                .foregroundColor(.red)
                .frame(width: 35, height: 35)
                .alignmentGuide(VerticalAlignment.bottom, computeValue: { d in
                    290
                })
                .alignmentGuide(HorizontalAlignment.center, computeValue: { d in
                    -95
                })
            
            HStack {
                VStack {
                    Text("菜名")
                        .foregroundColor(Color.white)
                        .font(.title)
                    Text("tags")
                        .foregroundColor(Color.white)
                        .font(.title3)
                }
                
            }
            .frame(width: 300)
            .background(Color.gray.opacity(0.5))
            .alignmentGuide(VerticalAlignment.bottom, computeValue: { d in
                72
            })
            
        }.frame(width:300, height: 300)
        
        
    }
}

struct ShowCourse_Previews: PreviewProvider {
    static var previews: some View {
        ShowCourse()
    }
}


