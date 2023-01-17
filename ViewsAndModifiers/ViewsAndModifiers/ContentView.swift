//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by xhm on 2023/1/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, wolrd!")
            .padding()
            .background(.red)
            .padding()
            .background(.blue)
            .padding()
            .background(.green)
            .padding()
            .background(.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
