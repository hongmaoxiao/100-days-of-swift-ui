//
//  ContentView.swift
//  WordScramble
//
//  Created by xhm on 2023/1/22.
//

import SwiftUI

struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    var body: some View {
        List {
            Section("Section 1") {
                Text("Static row 1")
                Text("Static row 2")
            }

            Section("Section 2") {
                ForEach(0..<5) {
                    Text("Dynamic row \($0)")
                }
            }

            Section("Section 3") {
                Text("Hello, world!")
                Text("Hello, world!")
                Text("Hello, world!")
            }
            
            Section("Section 4") {
                ForEach(people, id: \.self) {
                    Text($0)
                }
            }
        }
        .listStyle(.grouped)
    }
    
    func loadFile() {
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
            if let fileContents = try? String(contentsOf: fileURL) {
                fileContents
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
