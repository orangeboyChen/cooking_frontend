//
//  MakeCourse.swift
//  cookinglearning (iOS)
//
//  Created by Little Weak_duck on 2022/5/7.
//

import SwiftUI

struct MakeCourse: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                HStack(alignment: .bottom) {
                    Text("1")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                    
                    Text("/")
                        .font(.title)
                        .fontWeight(.black)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, -6.0)
                        .foregroundColor(.orange)
                    Text("7")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .padding(.leading, -3.0)
                        
                    Spacer()
                }
                
                Spacer()
                
            }
            
            Spacer().frame(height: 15)
            Text("冷水锅中放入切好的猪五花肉，加入料酒与葱姜，煮 15 分钟去掉血腥")
            Spacer().frame(height: 15)
            VStack {
                ProgressView(value: 0.5)
                HStack {
                    Spacer()
                    Text("本步骤预计需要20分钟")
                        .foregroundColor(.gray)
                        .font(.caption)
                }
            }
            
            Spacer().frame(height: 15)
            HStack {
                
                Button {
                    
                } label: {
                    Image(systemName: "pause.fill")
                        .foregroundColor(.white)
                        .frame(width: 40, height: 40)
                        .background(
                            Circle()
                                .foregroundColor(.red)
                                .opacity(0.9)
                        )
                }
                Spacer()
                Button {
                    
                } label: {
                    HStack {
                        Image(systemName: "arrowtriangle.right.fill")
                        Text("下一步")
                            .font(.system(size: 14.0))
                            .padding(.leading, -6.0)
                    }
                    .foregroundColor(.white)
                    .frame(width: 90, height: 40)
                    .background(
                        RoundedRectangle(cornerRadius: 20.0)
                            .opacity(0.9)
                            .foregroundColor(.green))
                    
                }

                
            }
            
        }
        .padding()
        
//        HStack(alignment: .top) {
//            VStack(alignment: .leading){
//                HStack{
//                    Text("红烧肉")
//                        .font(.largeTitle)
//                        .bold()
//                    Spacer()
//                }
//                .padding(.bottom)
//                HStack(alignment: .bottom) {
//                    Text("第一步")
//                        .font(.title)
//                        .foregroundColor(.systemYellow.opacity(0.8))
//                    Text("/共五步")
//                        .font(.subheadline)
//                        .foregroundColor(.gray)
//                }
//                .padding(.bottom)
//                Text("具体操作第三方似懂非懂送if就饿了放假啊饿了就放到法拉第开发局护发素诋毁")
//                    .padding()
//                    .background(.systemGray6)
//                    .cornerRadius(15)
//                HStack {
//                    Spacer()
//                    countDown(stepTime: 100)
//                        .height(120)
//                        .padding()
//                        .background(.systemGray6)
//                        .cornerRadius(15)
//                        .shadow(radius: 10, x:10, y:10)
//                    Spacer()
//                }
//                .padding()
//    //
//    //            HStack {
//    //                Spacer()
//    //                Button(action: {
//    //                    print("asd")
//    //                }){
//    //                    Image(systemName: "stop.circle")
//    //                        .font(.system(size: 100))
//    //                        .foregroundColor(.red)
//    //            }
//    //                Spacer()
//    //                Button(action: {
//    //                    print("asd")
//    //                }){
//    //                    Image(systemName: "arrow.counterclockwise.circle")
//    //                        .font(.system(size: 100))
//    //                        .foregroundColor(.green)
//    //                }
//    //                Spacer()
//    //            }
//    //            HStack{
//    //                Spacer()
//    //                Button(action: {
//    //                    print("asd")
//    //                }){
//    //                    Text("上一步")
//    //                        .font(.system(size: 50))
//    //                        .foregroundColor(.black)
//    //                        .padding()
//    //                        .background(.red)
//    //                        .cornerRadius(20)
//    //
//    //                }
//    //                Button(action: {
//    //                    print("asd")
//    //                }){
//    //                    Text("下一步")
//    //                        .font(.system(size: 50))
//    //                        .padding()
//    //                        .foregroundColor(.black)
//    //                        .background(.systemGreen)
//    //                        .cornerRadius(20)
//    //                }
//    //                Spacer()
//    //            }
//
//            }
//            .padding()
//        }

    }
}

struct MakeCourse_Previews: PreviewProvider {
    static var previews: some View {
        MakeCourse()
            .previewDevice("iPhone 13 Pro")
    }
}
