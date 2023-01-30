//
//  ContentView.swift
//  iExpense
//
//  Created by xhm on 2023/1/30.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    let name: String
    
    var body: some View {
        Button("Dismiss") {
            dismiss()
        }
    }
}

struct ContentView: View {
//    @StateObject private var user = User()
    @State private var showingSheet = false
    
    var body: some View {
//        VStack {
//            Text("Your name is \(user.firstName) \(user.lastName)")
//
//            TextField("First name", text: $user.firstName)
//            TextField("Last name", text: $user.lastName)
//        }
//        .padding()
        Button("Show Sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "@xhm")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
