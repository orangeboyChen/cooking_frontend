//
//  ShowCourse.swift
//  cookinglearning (iOS)
//
//  Created by Little Weak_duck on 2022/4/26.
//

import SwiftUI

struct ShowCourse: View {
    
    let radius = 10.0
    
    @State var isStarred = false
    
    var body: some View {
//        ZStack (alignment: .bottom){
//            Image("hongshaorou")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .frame(width:300, height: 200)
//                .clipped()
//                .cornerRadius(25)
//            Image(systemName: "heart.fill")
//                .foregroundColor(.red)
//                .font(.title)
//                .alignmentGuide(VerticalAlignment.bottom, computeValue: { d in
//                    190
//                })
//                .alignmentGuide(HorizontalAlignment.center, computeValue: { d in
//                    -95
//                })
//
//            HStack {
//                VStack {
//                    Text("菜名")
//                        .foregroundColor(Color.white)
//                        .font(.title)
//                    Text("tags")
//                        .foregroundColor(Color.white)
//                        .font(.title3)
//                }
//
//            }
//            .frame(width: 300)
//            .background(Color.gray.opacity(0.5))
//
//        }
        
        VStack(alignment: .leading) {
            VStack {
                NavigationLink(
                    destination: CourseDetail(),
                    label: {
                        Image("hongshaorou")
                            .sizeToFit()
                            .aspectRatio(contentMode: .fill)
                            .overlay(
                                .black.opacity(0.3)
                            )
                    })
                //Todo:这里暂时用button，以后要改成navigationlink
            }
            .frame(height: 200)
            .clipped()
            
            .overlay(
                HStack {
                    VStack(alignment: .leading) {
                        Text("青椒炒香蕉").font(.title).fontWeight(.bold)
                        HStack {
                            Text("川菜 · 辣度适中").font(.caption)
                        }.padding(.leading, 4.0)
                        
                    }
                    Spacer()
                    Button {
                        withAnimation {
                            isStarred = !isStarred
                        }
                    } label: {
                        Image(systemName: isStarred ? "star.fill" : "star")
                            .foregroundColor(.yellow)
                            .font(.title2)
                            .padding(.trailing, 8.0)
                    }

                    
                }
                
                    .padding(8.0)
                    .foregroundColor(.white)
                , alignment: .bottomLeading)
        }
        .cornerRadius(radius)
        .background(RoundedRectangle(cornerRadius: radius)
            .foregroundColor(.systemBackground)
            .shadow(color: .init(.displayP3, white: 0.5, opacity: 0.2), radius: 8.0, x: 2, y: 2)
        )
        

        
        
        
    }
}

struct ShowCourse_Previews: PreviewProvider {
    static var previews: some View {
        ShowCourse()
    }
}


