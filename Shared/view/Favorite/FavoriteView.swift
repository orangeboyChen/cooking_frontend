//
//  FavoriteView.swift
//  cookinglearning (iOS)
//
//  Created by orangeboy Chen on 2022/4/22.
//

import SwiftUI

struct FavoriteView: View {
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    print("asd")
                }){
                    Image(systemName: "chevron.left.circle")
                        .font(.title2)
                }
                Spacer()
                Text("2022年1月1日")
                    .font(.title2)
                Spacer()
                Button(action: {
                    print("asd")
                }){
                    Image(systemName: "chevron.right.circle")
                        .font(.title2)
                        .foregroundColor(.systemGray)
                }
            }
            .padding()
            ScrollView{
                Group{
                    VStack(alignment:.leading) {
                    HStack {
                        Text("材料")
                            .font(.title)
                            .bold()
                            .padding([.top, .leading], 10.0)
                            .padding(.bottom, -10.0)
                        Spacer()
                    }
                    VStack(alignment:.leading) {
                        Text("主食:")
                            .font(.title2)
                            .bold()
                            .padding(.bottom, 4.0)
                        Text("sadsadasdasdasdasdasd")
                            .padding(.bottom, 4.0)
                        Text("蔬菜:")
                            .font(.title2)
                            .bold()
                            .padding(.bottom, 4.0)
                        Text("sadsadasdasdasdasdasd")
                            .padding(.bottom, 4.0)
                        Text("肉类:")
                            .font(.title2)
                            .bold()
                            .padding(.bottom, 4.0)
                        Text("sadsadasdasdasdasdasd")
                            .padding(.bottom, 4.0)
                        Text("调味品:")
                            .font(.title2)
                            .bold()
                            .padding(.bottom, 4.0)
                        Text("sadsadasdasdasdasdasd")
                            .padding(.bottom, 4.0)
                    }
                    .padding()
                    }
                    
                }
                .padding(5.0)
                .background(.white)
                .cornerRadius(15)
                .shadow(radius: 5, x : 8, y : 8)
                .padding()
                Group{
                    VStack(alignment:.leading) {
                        HStack {
                            Text("菜品")
                                .font(.title)
                                .bold()
                                .padding([.top, .leading], 10.0)
                                .padding(.bottom, -10.0)
                            Spacer()
                        }
                        VStack(alignment:.leading) {
                            Text("早餐:")
                                .font(.title2)
                                .bold()
                                .padding(.bottom, 4.0)
                            ForEach(0..<4) { i in
                                Button(action: {
                                    print("asd")
                                }){
                                    Text("sadasdasd")
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                }
                                .buttonStyle(PlainButtonStyle())
                                .padding(.bottom, 4.0)
                            }
                            Text("午餐:")
                                .font(.title2)
                                .bold()
                                .padding(.bottom, 4.0)
                            ForEach(0..<3) { i in
                                Button(action: {
                                    print("asd")
                                }){
                                    Text("sadasdasd")
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                }
                                .buttonStyle(PlainButtonStyle())
                                .padding(.bottom, 4.0)
                            }
                            Text("晚餐:")
                                .font(.title2)
                                .bold()
                                .padding(.bottom, 4.0)
                            ForEach(0..<6) { i in
                                Button(action: {
                                    print("asd")
                                }){
                                    Text("sadasdasd")
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                }
                                .buttonStyle(PlainButtonStyle())
                                .padding(.bottom, 4.0)
                            }
                            Text("宵夜:")
                                .font(.title2)
                                .bold()
                                .padding(.bottom, 4.0)
                            ForEach(0..<2) { i in
                                Button(action: {
                                    print("asd")
                                }){
                                    Text("sadasdasd")
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                }
                                .buttonStyle(PlainButtonStyle())
                                .padding(.bottom, 4.0)
                            }
                        }
                        .padding()
                    }
                    
                }
                .padding(5.0)
                .background(.white)
                .cornerRadius(15)
                .shadow(radius: 5, x : 8, y : 8)
                .padding()
            }
        }
        .background(.systemGray6)
    }
    
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}





