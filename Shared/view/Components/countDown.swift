//
//  countDown.swift
//  cookinglearning (iOS)
//
//  Created by Little Weak_duck on 2022/5/7.
//

import SwiftUI

struct countDown: View {
    @State private var countDownPrecent: Double = 0
    @State var stepTime:Int
    @State private var remainTime = -1
    var body: some View {
        VStack {
            HStack {
                Text("本步骤剩余时间：")
                    .font(.title2)
                Spacer()
            }
            .padding(.leading)
            Text("\(remainTime)")
                .font(.largeTitle)
                .bold()
            ProgressView(value: countDownPrecent)
        }
        .onReceive(Timer.publish(every: 1, on: .main, in: .common).autoconnect(), perform: { _ in
            if self.remainTime == -1 {
                self.remainTime = self.stepTime
            }
            if self.remainTime > 0 {
                self.remainTime -= 1
                self.countDownPrecent = 1-(Double(remainTime)/Double(stepTime))
            }
        })
    }
}

struct countDown_Previews: PreviewProvider {
    static var previews: some View {
        countDown(stepTime: 100)
    }
}


