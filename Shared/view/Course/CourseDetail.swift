//
//  CourseDetail.swift
//  cookinglearning (iOS)
//
//  Created by Little Weak_duck on 2022/4/27.
//

import SwiftUI

struct CourseDetail: View {
    var body: some View {
        List{
            Image("hongshaorou")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                Text("  红烧肉")
                    .font(.title)
                    .bold()
                Spacer()
                Tag(tagName: "qwe")
                Tag(tagName: "caolnima")
            }
            Text("简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介")
            Section(header:Text("配料")){
                HStack {
                    Text("qwe")
                    Spacer()
                    Text("qwe")
                    Spacer()
                }
                HStack {
                    Text("qwe")
                    Spacer()
                    Text("qwe")
                    Spacer()
                }
                HStack {
                    Text("qwe")
                    Spacer()
                    Text("qwe")
                    Spacer()
                }
                HStack {
                    Text("qwe")
                    Spacer()
                    Text("qwe")
                    Spacer()
                }
            }
            Section(header:Text("步骤")){
                Text("啊上课的哈上了洪都拉斯了肯德基阿斯利康大家看啦手机来看看了")
                Text("123")
                Text("123")
                Text("123")
            }
        }
        .listStyle(SidebarListStyle())
        
    }
}



struct CourseDetail_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetail()
    }
}


