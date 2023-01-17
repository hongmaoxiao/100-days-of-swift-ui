//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by xhm on 2023/1/16.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    var body: some View {
        Button("Hello, wolrd!") {
            useRedText.toggle()
        }
        .foregroundColor(useRedText ? .red : .blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
