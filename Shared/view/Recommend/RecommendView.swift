//
//  RecommentView.swift
//  cookinglearning (iOS)
//
//  Created by orangeboy Chen on 2022/4/22.
//

import SwiftUI
import SwiftUIX
struct RecommendView: View {
    
    @State var keyword = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    SearchBar("搜索", text: $keyword.animation())
                        .padding(.horizontal, 8.0)
                    VStack {
                        
                        Button(action: {
                            //navigation到上传菜品
                        }){
                            HStack {
                                Spacer()
                                Image(systemName: "square.and.arrow.up")
                                Text("上传菜品")
                                Spacer()
                            }
                            .padding(15)
                            .background(Color.systemBlue.opacity(0.1))
                            .foregroundColor(Color.systemBlue)
                            .cornerRadius(10)
                            
                        }
                        VStack {
                            ForEach (1..<7){ i in
                                RecommendCourseCard()
                                    .padding(.vertical, 4.0)
                                    
                                
                            }
                        }
                        Spacer()
                        
                    }
                    .padding(.horizontal, 16.0)
                }
            }
            .navigationTitle("推荐")
            
        }
    }

}

struct RecommendView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendView()
            .previewDevice("iPhone 13 Pro")
    }
}
