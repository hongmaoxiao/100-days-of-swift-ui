//
//  ContentView.swift
//  Animations
//
//  Created by xhm on 2023/1/27.
//

import SwiftUI

struct ContentView: View {
    let letters = Array("hello, Swifthui")
    @State private var animationAmount = 1.0
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    
    
    var body: some View {
//        Button("Tap Me") {
//            animationAmount += 1
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundColor(.white)
//        .clipShape(Circle())
//        .overlay(
//            Circle()
//                .stroke(.red)
//                .scaleEffect(animationAmount)
//                .opacity(2 - animationAmount)
//                .animation(.easeInOut(duration: 1).repeatForever(autoreverses: false), value: animationAmount)
//        )
//        .onAppear {
//            animationAmount = 2
//        }
        
//        print(animationAmount)
//        return VStack {
//            Stepper("Scale amount", value: $animationAmount.animation(
//                .easeInOut(duration: 1)
//                .repeatCount(3, autoreverses: true)), in: 1...10)
//            Spacer()
//
//            Button("Tap Me") {
//                animationAmount += 1
//            }
//            .padding(50)
//            .background(.red)
//            .foregroundColor(.white)
//            .clipShape(Circle())
//            .scaleEffect(animationAmount)
//        }
        
        
//            Button("Tap Me") {
//                withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
//                    animationAmount += 360
//                }
//            }
//            .padding(50)
//            .background(.red)
//            .foregroundColor(.white)
//            .clipShape(Circle())
//            .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
        
//        Button("Tap Me") {
//            enabled.toggle()
//        }
//        .frame(width: 200, height: 200)
//        .background(enabled ? .blue : .red)
//        .animation(nil, value: enabled)
//        .foregroundColor(.white)
//        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
//        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
        
//        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
//            .frame(width: 300, height: 200)
//            .clipShape(RoundedRectangle(cornerRadius: 10
//                                       ))
//            .offset(dragAmount)
//            .gesture(
//                DragGesture()
//                    .onChanged {
//                        dragAmount = $0.translation
//                    }
//                    .onEnded { _ in
//                        withAnimation {
//                            dragAmount = .zero
//                        }
//                    }
//                )
//            .animation(.spring(), value: dragAmount)
        
        HStack(spacing: 0) {
            ForEach(0..<letters.count, id: \.self) { num in
                Text(String(letters[num]))
                    .padding(6)
                    .font(.title)
                    .background(enabled ? .blue : .red)
                    .offset(dragAmount)
                    .animation(.default.delay(Double(num)/20), value: dragAmount)
            }
            .gesture(
                DragGesture()
                    .onChanged {
                        dragAmount = $0.translation
                    }
                    .onEnded {
                        _ in
                        dragAmount = .zero
                        enabled.toggle()
                    }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
