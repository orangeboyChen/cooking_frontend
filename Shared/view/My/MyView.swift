//
//  MyView.swift
//  cookinglearning (iOS)
//
//  Created by orangeboy Chen on 2022/4/22.
//

import SwiftUI

struct MyView: View {
    var body: some View {
        ScrollView{
                Button(action: {
                    print("asd")
                }){
                    Image("hongshaorou")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 80, height: 80)
                        Text("好好好")
                            .font(.system(size: 60))
                            .foregroundColor(.black)
                    Spacer()
                    Text("编辑")
                        .foregroundColor(.systemGray)
                        .padding(.trailing, -7.0)
                    Image(systemName: "chevron.right")
                        .foregroundColor(.systemGray)
                }
                .padding()
            Divider()
            Group{
                HStack {
                    Text("收藏的菜")
                        .font(.title)
                    .bold()
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.title)
                }.padding()
                HStack{
                    Spacer()
                    VStack{
                        Image("hongshaorou")
                            .resizable()
                            .frame(width:150,height:150)
                        Text("红烧肉")
                    }
                    Spacer()
                    VStack{
                        Image("hongshaorou")
                            .resizable()
                            .frame(width:150,height:150)
                        Text("红烧肉")
                    }
                    Spacer()
                }
            }
            Divider()
            Group{
                HStack {
                    Text("做过的菜")
                        .font(.title)
                        .bold()
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.title)
                }.padding()
                HStack{
                    Spacer()
                    VStack{
                        Image("hongshaorou")
                            .resizable()
                            .frame(width:150,height:150)
                        Text("红烧肉")
                    }
                    Spacer()
                    VStack{
                        Image("hongshaorou")
                            .resizable()
                            .frame(width:150,height:150)
                        Text("红烧肉")
                    }
                    Spacer()
                }
            }
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}
