//
//  MakeCourse.swift
//  cookinglearning (iOS)
//
//  Created by Little Weak_duck on 2022/5/7.
//

import SwiftUI

struct MakeCourse: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("红烧肉")
                    .font(.largeTitle)
                    .bold()
                Spacer()
            }
            HStack(alignment: .bottom) {
                Text("第一步")
                    .font(.title)
                Text("/共五步")
                    .font(.subheadline)
            }
            Text("第三方似懂非懂送if就饿了放假啊饿了就放到法拉第开发局护发素诋毁")
            HStack {
                Spacer()
                countDown(stepTime: 100)
                Spacer()
            }
            .padding()
        }
        .padding()

    }
}

struct MakeCourse_Previews: PreviewProvider {
    static var previews: some View {
        MakeCourse()
    }
}
