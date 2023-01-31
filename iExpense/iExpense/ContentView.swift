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
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    @AppStorage("tapCount") private var tapCount = 0
    
    var body: some View {
        //        VStack {
        //            Text("Your name is \(user.firstName) \(user.lastName)")
        //
        //            TextField("First name", text: $user.firstName)
        //            TextField("Last name", text: $user.lastName)
        //        }
        //        .padding()
        //        Button("Show Sheet") {
        //            showingSheet.toggle()
        //        }
        //        .sheet(isPresented: $showingSheet) {
        //            SecondView(name: "@xhm")
        //        }
//        NavigationView {
//            VStack {
//                List {
//                    ForEach(numbers, id: \.self) {
//                        Text("Row \($0)")
//                    }
//                    .onDelete(perform: removeRows)
//                }
//
//                Button("Add Number") {
//                    numbers.append(currentNumber)
//                    currentNumber += 1
//                }
//            }
//            .navigationTitle("OnDelete()")
//            .toolbar {
//                EditButton()
//            }
//        }
        Button("Tap count: \(tapCount)") {
            tapCount += 1
//            UserDefaults.standard.set(tapCount, forKey: "Tap")
        }
    }
    
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
