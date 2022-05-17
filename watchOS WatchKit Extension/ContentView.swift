//
//  ContentView.swift
//  watchOS WatchKit Extension
//
//  Created by orangeboy Chen on 2022/5/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
            }
            VStack {
                
                Text("2")
                    .font(.title3)
            }
            .frame(width: 40, height: 40)
            .background(ZStack {
                Circle()
                    .stroke(lineWidth: 5.0)
                    .opacity(0.3)
                    .foregroundColor(Color.blue)
                
                Circle()
                    .trim(from: 0, to: 0.2)
                    .stroke(style: StrokeStyle(lineWidth: 5.0, lineCap: .round, lineJoin: .round))
                    .foregroundColor(Color.blue)
                    .animation(.linear, value: "indicator")
                    .rotationEffect(Angle(degrees: 270.0))
            }
                        
            )
            Spacer().frame(height: 10)
                
            ScrollView {
                Text("冷水锅中放入切好的猪五花肉，加入料酒与葱姜，煮 15 分钟去掉血腥冷水锅中放入切好的猪五花肉，加入料酒与葱姜，煮 15 分钟去掉血腥")
            }
            .frame(height: 80)
            
            
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "pause.fill")
                }
                .buttonStyle(BorderedButtonStyle(tint: .red))
                .frame(width: 70)
                
                
                
                Button {
                    
                } label: {
                    HStack {
                        Image(systemName: "arrowtriangle.right.fill")
                        Text("下一步")
                    }
                    
                }
                .buttonStyle(BorderedButtonStyle(tint: .green))
            }
            .padding(.top, 10.0)
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
