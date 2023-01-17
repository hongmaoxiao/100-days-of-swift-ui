//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by xhm on 2023/1/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world！")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
