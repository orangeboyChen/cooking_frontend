////
////  SearchBar.swift
////  cookinglearning (iOS)
////
////  Created by Little Weak_duck on 2022/5/1.
////
//
//import SwiftUI
//
//struct SearchBar: View {
//    @Binding var text:String
//    
//    @State private var isEditing = false
//    
//    var body: some View {
//        HStack{
//            
//            TextField("搜索", text: $text)
//                .padding(7)
//                .padding(.horizontal, 25)
//                .background(Color(.systemGray6))
//                .cornerRadius(8)
//                .overlay(
//                    HStack {
//                        Image(systemName: "magnifyingglass")
//                            .foregroundColor(.gray)
//                            .frame(minWidth: 0,  maxWidth: .infinity,  alignment: .leading)
//                            .padding(.leading, 8)
//                        if  isEditing {
//                            Button(action: {self.text = ""}){Image(systemName: "multiply.circle.fill")
//                                    .foregroundColor(.gray)
//                                    .padding(.trailing, 8)
//                            }
//                        }
//                    })
//                .onTapGesture {
//                    self.isEditing = true
//                }
//            if isEditing {
//                Button(action: {
//                    self.isEditing = false
//                    self.text = ""
//                }){
//                    Text("取消")
//                }
//                .padding(.trailing, 10)
//                .transition(.move(edge: .trailing))
//                .animation(.default, value:0)
//            }
//        }
//    }
//}
//
//struct SearchBar_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchBar(text: .constant(""))
//    }
//}
