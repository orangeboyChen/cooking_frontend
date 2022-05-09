//
//  MakeCourse.swift
//  cookinglearning (iOS)
//
//  Created by Little Weak_duck on 2022/5/7.
//

import SwiftUI

struct MakeCourse: View {
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading){
                HStack{
                    Text("红烧肉")
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                }
                .padding(.bottom)
                HStack(alignment: .bottom) {
                    Text("第一步")
                        .font(.title)
                        .foregroundColor(.systemYellow.opacity(0.8))
                    Text("/共五步")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.bottom)
                Text("具体操作第三方似懂非懂送if就饿了放假啊饿了就放到法拉第开发局护发素诋毁")
                    .padding()
                    .background(.systemGray6)
                    .cornerRadius(15)
                HStack {
                    Spacer()
                    countDown(stepTime: 100)
                        .height(120)
                        .padding()
                        .background(.systemGray6)
                        .cornerRadius(15)
                        .shadow(radius: 10, x:10, y:10)
                    Spacer()
                }
                .padding()
    //
    //            HStack {
    //                Spacer()
    //                Button(action: {
    //                    print("asd")
    //                }){
    //                    Image(systemName: "stop.circle")
    //                        .font(.system(size: 100))
    //                        .foregroundColor(.red)
    //            }
    //                Spacer()
    //                Button(action: {
    //                    print("asd")
    //                }){
    //                    Image(systemName: "arrow.counterclockwise.circle")
    //                        .font(.system(size: 100))
    //                        .foregroundColor(.green)
    //                }
    //                Spacer()
    //            }
    //            HStack{
    //                Spacer()
    //                Button(action: {
    //                    print("asd")
    //                }){
    //                    Text("上一步")
    //                        .font(.system(size: 50))
    //                        .foregroundColor(.black)
    //                        .padding()
    //                        .background(.red)
    //                        .cornerRadius(20)
    //
    //                }
    //                Button(action: {
    //                    print("asd")
    //                }){
    //                    Text("下一步")
    //                        .font(.system(size: 50))
    //                        .padding()
    //                        .foregroundColor(.black)
    //                        .background(.systemGreen)
    //                        .cornerRadius(20)
    //                }
    //                Spacer()
    //            }
                
            }
            .padding()
        }

    }
}

struct MakeCourse_Previews: PreviewProvider {
    static var previews: some View {
        MakeCourse()
            .previewDevice("iPhone 13 Pro")
    }
}
