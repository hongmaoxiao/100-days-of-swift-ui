//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by xhm on 2023/1/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200)
        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
