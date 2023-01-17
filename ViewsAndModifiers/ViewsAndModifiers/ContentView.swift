//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by xhm on 2023/1/16.
//

import SwiftUI

struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.blue)
            .clipShape(Capsule())
    }
}

struct ContentView: View {
    var motto1: some View {
        Text("Draco dormiens")
    }
    let motto2 = Text("nunquam titillandus")
    
    var spells: some View {
        VStack {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    
    var spells1: some View {
        Group {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    
    @ViewBuilder var spells3: some View {
        Text("Lumos")
        Text("Obliviate")
    }
    
    @State private var useRedText = false
    
    var body: some View {
        VStack {
            CapsuleText(text: "First")
                .foregroundColor(.white)
            CapsuleText(text: "Second")
                .foregroundColor(.yellow)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
