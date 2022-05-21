//
//  CourseDetail.swift
//  cookinglearning (iOS)
//
//  Created by Little Weak_duck on 2022/4/27.
//

import SwiftUI

struct CourseDetail: View {
    var courseStep=["冷水锅中放入切好的猪五花肉，加入料酒与葱姜，煮 15 分钟去掉血腥","锅中放入两片生姜提味","开中小火后直接加入五花肉，不需要放入食用油，每块五花肉六个面都煎一下，煎至出油即可","将煎出的油倒出备用，并将五花肉推至一边，加入 15g 冰糖，翻炒至冰糖融化","融化后将五花肉与冰糖炒至融合上色，加入 生抽 10ml、老抽 15ml、料酒 5ml翻炒至上色","加入烧好的开水炖煮40 分钟（刀工差的同学切的过大请自觉延长炖煮时间），并放入生姜 2 片、香叶 3 片、八角 2 个","盖上锅盖煮至沸腾后，加入煮好扎好孔的鸡蛋和豆皮，开中小火，等待 40 分钟。（中途可适当翻搅防止粘锅）","打开锅盖，待汤汁快没有的时候开大火收汁（切记不可收干","加入 2-3g 盐，翻炒一下，就可以出锅了"]
    var body: some View {
        ZStack {
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
                            Text("红烧肉").font(.largeTitle).fontWeight(.bold)
                            Text("🥩")
                        }
                        .padding(.bottom, 3.0)
                        
                        
                        Text("这份红烧肉教程是一道新手不败的菜谱。配着米饭好吃的停不下来，香糯无敌棒色泽诱人肥而不腻")
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
                            VStack(alignment: .leading){
                                    Label("猪五花肉：约 3~4 斤", systemImage: "circle.fill")
                                    Label("姜： 6 片", systemImage: "circle.fill")
                                    Label("生抽：10ml", systemImage: "circle.fill")
                                    Label("冰糖：15 克（约 7 块）", systemImage: "circle.fill")
                                Label("料酒：5ml", systemImage: "circle.fill")
                                Label("开水：没过食材的量，需要 600ml-900ml", systemImage: "circle.fill")
                                Label("香叶：3 片", systemImage: "circle.fill")
                                Label("八角：2 个", systemImage: "circle.fill")
                                Label("鸡蛋（可选）：0-2 个", systemImage: "circle.fill")
                                VStack(alignment:.leading){
                                    Label("豆皮（可选）：0-80g", systemImage: "circle.fill")
                                    Label("盐：2-3g", systemImage: "circle.fill")
                                }
                                
                            }
                            .padding(.trailing)
                            .font(.caption)
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
                        
                        ForEach(1..<10) { i in
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
                                Text(courseStep[i-1])
                            }
                            Spacer().frame(height: 20)
                        }
                        
                        

                    }
                    
                    .padding()
                        
                        
                    }
            }

            .edgesIgnoringSafeArea(.top)
            NavigationLink(destination: MakeCourse()) {
                Text("开始制作本菜")
                    .font(.title2)
                Image(systemName: "fork.knife")
                    .font(.title2)
            }
            .padding()
            .background(Material.ultraThin)
            .opacity(0.9)
            .foregroundColor(.systemBlue)
            .cornerRadius(100)
            .offset(y:280)
            .navigationTitle("红烧肉")
            
        }
        
        
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
            .previewDevice("iPhone 13 Pro")
    }
}


