//
//  ShowCourse.swift
//  cookinglearning (iOS)
//
//  Created by Little Weak_duck on 2022/4/26.
//  Edited by orangeboy on 2022/5/17 --rename ShowCourse.swift to RecommendCourseCard
//

import SwiftUI

struct RecommendCourseCard: View {
    
    @State var courseName="番茄炒蛋"
    @State var courseTag="asdasd"
    @State var pic="hongshaorou"

    let radius = 10.0

    @State var isStarred = false

    var body: some View {


        VStack(alignment: .leading) {
            VStack {
                NavigationLink(
                    destination: CourseDetail(),
                    label: {
                        Image(pic)
                            .sizeToFit()
                            .aspectRatio(contentMode: .fill)
                            .overlay(
                                .black.opacity(0.3)
                            )
                    }
                )
            }
            
            .frame(height: 200)
            .clipped()
            
            .overlay(
                HStack {
                    VStack(alignment: .leading) {
                        Text(courseName).font(.title).fontWeight(.bold)
                        HStack {
                            Text(courseTag).font(.caption)
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
        RecommendCourseCard()
    }
}


