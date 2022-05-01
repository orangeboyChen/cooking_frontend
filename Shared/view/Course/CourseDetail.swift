//
//  CourseDetail.swift
//  cookinglearning (iOS)
//
//  Created by Little Weak_duck on 2022/4/27.
//

import SwiftUI

struct CourseDetail: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                VStack {
                    Image("hongshaorou")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .overlay(.black.opacity(0.2))
                }
                .maxHeight(250)
                .clipped()
                
                VStack(alignment: .leading) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("🐷红烧肉").font(.largeTitle).fontWeight(.bold)
                        Text("🌶️🌶️🌶️")
                    }
                    .padding(.bottom, 3.0)
                    
                    
                    Text("1111111111111简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介")
                        .font(.caption)
                        .lineLimit(3)
                    
                    Spacer().frame(height: 30)
                    Group {
                        Text("配料")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .background(Rectangle()
                                .foregroundColor(.green)
                                .frame(height: 8)
                                .offset(x: 0, y: -3)
                                        , alignment: .bottom)
                        Text("qewwejasljflasjd;fjklasdjfkasdhjfklasjhifkas").font(.caption)
                    }
                    
                    Spacer().frame(height: 40)
                    Text("步骤")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .background(Rectangle()
                            .foregroundColor(.green)
                            .frame(height: 8)
                            .offset(x: 0, y: -3)
                                    , alignment: .bottom)
                    
                    ForEach(1..<12) { i in
                        VStack(alignment: .leading) {
                            HStack {
                                Text("\(i)")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    
                                Text("/")
                                    .font(.title)
                                    .fontWeight(.black)
                                    .multilineTextAlignment(.leading)
                                    .padding(.leading, -6.0)
                                    .foregroundColor(.orange)
                                Spacer()
                            }
                            
                            Spacer().frame(height: 5)
                            Text("焯水焯水焯水焯水焯水焯水焯水焯水焯水焯水焯水焯水焯水焯水焯水焯水焯水")
                        }
                        Spacer().frame(height: 20)
                    }
                    
                    

                }
                
                .padding()
                    
                    
                }
        }
        .edgesIgnoringSafeArea(.top)
        
//        List{
//            Image("hongshaorou")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//
//            HStack {
//                Text("红烧肉")
//                    .font(.title)
//                    .bold()
//                Spacer()
//                Tag(tagName: "qwe")
//                Tag(tagName: "caolnima")
//            }
//            Text("简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介")
//            Section(header:Text("配料")){
//                HStack {
//                    Text("qwe")
//                    Spacer()
//                    Text("qwe")
//                    Spacer()
//                }
//                HStack {
//                    Text("qwe")
//                    Spacer()
//                    Text("qwe")
//                    Spacer()
//                }
//                HStack {
//                    Text("qwe")
//                    Spacer()
//                    Text("qwe")
//                    Spacer()
//                }
//                HStack {
//                    Text("qwe")
//                    Spacer()
//                    Text("qwe")
//                    Spacer()
//                }
//            }
//            Section(header:Text("步骤")){
//                Text("啊上课的哈上了洪都拉斯了肯德基阿斯利康大家看啦手机来看看了")
//                Text("123")
//                Text("123")
//                Text("123")
//            }
//        }
//        .listStyle(SidebarListStyle())
        
    }
}



struct CourseDetail_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetail()
    }
}


