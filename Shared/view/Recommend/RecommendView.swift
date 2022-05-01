//
//  RecommentView.swift
//  cookinglearning (iOS)
//
//  Created by orangeboy Chen on 2022/4/22.
//

import SwiftUI

struct RecommendView: View {
    
    var body: some View {
        List{
            SearchBar(text: .constant(""))
            Button(action: {
                //navigation到上传菜品
            }){
                HStack {
                    Spacer()
                    Image(systemName: "square.and.arrow.up")
                    Text("上传菜品")
                    Spacer()
                }
                .font(.title2)
                .padding(5)
                .background(Color.systemBlue)
                .foregroundColor(Color.white)
                .cornerRadius(20).padding(10)
               
            }
            ForEach (1..<7){ i in
                ShowCourse()
                    
            }
            
        }
    }

}

struct RecommendView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendView()
    }
}
