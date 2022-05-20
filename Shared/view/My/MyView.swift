//
//  MyView.swift
//  cookinglearning (iOS)
//
//  Created by orangeboy Chen on 2022/4/22.
//

import SwiftUI

struct MyView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack {
                    Spacer().frame(height: UIApplication.shared.statusBarFrame.height)
                    HStack {
                        Button(action: {
                            print("asd")
                        }){
                            Image("hongshaorou")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 50, height: 50)
                            
                        }
                        VStack(alignment: .leading) {
                            Text("张三")
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("贡献了0道菜")
                                .font(.system(size: 14.0))
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                    }
                    .padding()
                    
                    VStack {
                        VStack {
                            HStack {
                                Text("收藏")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            HStack {
                                Image("hongshaorou")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50)
                                    .clipped()
                                    .cornerRadius(10)
                                Image("hongshaorou")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50)
                                    .clipped()
                                    .cornerRadius(10)
                                Image("hongshaorou")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50)
                                    .clipped()
                                    .cornerRadius(10)
                                Image("hongshaorou")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50)
                                    .clipped()
                                    .cornerRadius(10)
                                
                                Color.gray.opacity(0.2)
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(10)
                                    .overlay(Image(systemName: "ellipsis").foregroundColor(.gray))
                                Spacer()
                            }
                        }
                        .padding()
                        
                        HStack {
                            
                            Spacer()
                        }
                       
                    }
                    .background(Color(UIColor.systemBackground))
                    .cornerRadius(15)
                    .padding(.bottom, 8)
                    
                    VStack {
                        VStack {
                            HStack {
                                Text("做过")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            HStack {
                                Image("hongshaorou")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50)
                                    .clipped()
                                    .cornerRadius(10)
                                Image("hongshaorou")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50)
                                    .clipped()
                                    .cornerRadius(10)
                                Image("hongshaorou")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50)
                                    .clipped()
                                    .cornerRadius(10)
                                Image("hongshaorou")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50)
                                    .clipped()
                                    .cornerRadius(10)
                                
                                Color.gray.opacity(0.2)
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(10)
                                    .overlay(Image(systemName: "ellipsis").foregroundColor(.gray))
                                Spacer()
                            }
                        }
                        .padding()
                        
                        HStack {
                            
                            Spacer()
                        }
                        
                    }
                    .background(Color(UIColor.systemBackground))
                    .cornerRadius(15)
                    
                    
                }
                .padding()
                
            }
            .navigationTitle("我的")
            .navigationBarHidden(true)
            .background(.systemGray6)
            .ignoresSafeArea(edges: .vertical)
            
        }
        .background(.systemGray6)
        

    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}



