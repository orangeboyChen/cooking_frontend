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
            ProgressView(value: 0.5)
                .progressViewStyle(MyProgressViewStyle())
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
    struct MyProgressViewStyle:ProgressViewStyle{
        let foregroundColor:Color
        let backgroundColor:Color
        init(foregroundColor:Color = .orange,backgroundColor:Color = .systemGray3){
            self.foregroundColor = foregroundColor
            self.backgroundColor = backgroundColor
        }
        func makeBody(configuration: Configuration) -> some View {
            GeometryReader{ proxy in
                ZStack(alignment:.topLeading){
                    backgroundColor
                    Rectangle()
                        .fill(foregroundColor)
                        .frame(width:proxy.size.width * CGFloat(configuration.fractionCompleted ?? 0.0))
                }.clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(
                        configuration.label
                            .foregroundColor(.white)
                    )
            }
            .height(20)
        }
    }
}

struct countDown_Previews: PreviewProvider {
    static var previews: some View {
        countDown(stepTime: 100)
    }
}


