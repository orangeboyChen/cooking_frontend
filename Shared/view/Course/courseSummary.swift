//
//  courseSummary.swift
//  cookinglearning (iOS)
//
//  Created by Little Weak_duck on 2022/4/26.
//

import SwiftUI

struct courseSummary: View {
    var body: some View {
            ZStack (alignment: .bottom){
                Image("qwe")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:300, height: 300)
                .clipped()
                .cornerRadius(25)
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                    .alignmentGuide(VerticalAlignment.bottom, computeValue: { d in
                        290
                    })
                    .alignmentGuide(HorizontalAlignment.center, computeValue: { d in
                        -110
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

struct courseSummary_Previews: PreviewProvider {
    static var previews: some View {
        courseSummary()
    }
}


