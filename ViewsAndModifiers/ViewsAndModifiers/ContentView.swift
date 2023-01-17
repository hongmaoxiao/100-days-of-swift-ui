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
        VStack {
            Text("Gryffindor")
                .font(.largeTitle)
                .blur(radius: 0)
           Text("Hufflepuff")
           Text("Ravenclaw")
           Text("Slytherin")
        }
        .font(.title)
        .blur(radius: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
