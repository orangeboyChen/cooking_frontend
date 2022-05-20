//
//  FavoriteView.swift
//  cookinglearning (iOS)
//
//  Created by orangeboy Chen on 2022/4/22.
//

import SwiftUI
import SwiftUIX
struct FavoriteView: View {
    
    var body: some View {
        ZStack {
            ScrollView{
                VStack {
                    Spacer().frame(height: 120)
                    VStack {
                        VStack(alignment:.leading) {
                            HStack {
                                Text("你今天需要准备🥬")
                                    .fontWeight(.bold)
                                    .font(.title3)
                                Spacer()
                            }
                            .padding(.bottom, 2.0)
                            
                            
                            VStack(spacing: 10) {
                                HStack {
                                    Text("白菜")
                                    Spacer()
                                    Text("1斤")
                                }
                                
                                HStack {
                                    Text("白菜")
                                    Spacer()
                                    Text("1斤")
                                }
                                HStack {
                                    Text("白菜")
                                    Spacer()
                                    Text("1斤")
                                }
                                HStack {
                                    Text("白菜")
                                    Spacer()
                                    Text("1斤")
                                }
                                
                            }
                        }
                        .padding()
                    }
                    
                    .background(.white)
                    .cornerRadius(15)
                    
                    Spacer().frame(height: 15)
                    VStack {
                        VStack(alignment:.leading) {
                            HStack {
                                Text("早餐")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            .padding(.bottom, 2.0)
                            
                            
                            VStack(spacing: 10) {
                                HStack {
                                    Image("hongshaorou")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 50, height: 50)
                                        .clipped()
                                        .cornerRadius(10)
                                    VStack(alignment: .leading) {
                                        Text("红烧肉")
                                            .fontWeight(.bold)
                                        Text("川菜")
                                            .font(.caption)
                                        Text("五花肉、酱油")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                        Spacer()
                                    }
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                        .font(.body, weight: .bold)
                                        .foregroundColor(Color(UIColor.lightGray))
                                    
                                }
                            }
                        }
                        .padding()
                    }
                    .background(.white)
                    .cornerRadius(15)
                }
                .padding()
                
            }
            .overlay(
                VStack {
                Spacer().frame(height: UIApplication.shared.statusBarFrame.height)
                HStack {
                    Spacer()
                    Button(action: {
                        print("asd")
                    }){
                        Image(systemName: "arrowtriangle.left.fill")
                            .foregroundColor(.black.opacity(0.3))
                    }
                    
                    Text("2022年1月1日")
                        .font(.title3)
                        .padding(.horizontal, 20.0)
                        .padding(.vertical, 4.0)
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                                .foregroundColor(.black.opacity(0.1))
                        )
                    
                    
                    Button(action: {
                        print("asd")
                    }){
                        Image(systemName: "arrowtriangle.right.fill")
                            .foregroundColor(.black.opacity(0.3))
                    }
                    Spacer()
                }
            }
                .padding()
                .background(VisualEffectBlurView(blurStyle: .light)),
                alignment: .top
            )
            .background(.systemGray6)
        }
        .ignoresSafeArea(edges: .vertical)
        
    }
    
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}





