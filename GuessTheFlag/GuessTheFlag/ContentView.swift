//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by xhm on 2023/1/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Button("Delete selection", role: .destructive, action: execteDeleting)
//        VStack {
//            Button("Button 1") {}
//                .buttonStyle(.bordered)
//            Button("Button 2", role: .destructive) {}
//                .buttonStyle(.bordered)
//            Button("Button 3") {}
//                .buttonStyle(.borderedProminent)
//                .tint(.green)
//            Button("Button 4", role: .destructive) {}
//                .buttonStyle(.borderedProminent)
//        }
        Button {
            print("Button was tapped!")
        } label: {
            //Image(systemName: "pencil")
            Label("Edit", systemImage: "pencil")
        }
        
//        Image(systemName: "pencil")
    }
    
    func execteDeleting() {
        print("Now deleting")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
