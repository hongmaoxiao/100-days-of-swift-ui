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

struct UserStr: Codable {
    let firstName: String
    let lastName: String
}

struct ContentView: View {
//    @StateObject private var user = User()
    @State private var showingSheet = false
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    @AppStorage("tapCount") private var tapCount = 0
    @State private var userstr = UserStr(firstName: "Taylor", lastName: "Swift")
    @StateObject var expenses = Expenses()
    @State private var showingAddExpense = false
    
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
//        Button("Tap count: \(tapCount)") {
//            tapCount += 1
//        }
        
//        Button("Save User") {
//            let encode = JSONEncoder()
//
//            if let data = try? encode.encode(userstr) {
//                UserDefaults.standard.set(data, forKey: "UserData")
//            }
//        }
        
        NavigationView {
            List {
                ForEach(expenses.items) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.headline)
                            Text(item.type)
                        }
                        Spacer()
                        Text(item.amount, format: .currency(code: "USD"))
                    }
                }
                .onDelete(perform: removeItem)
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                    showingAddExpense = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddExpense) {
                AddView(expenses: expenses)
            }
        }
    }
    
    func removeItem(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
