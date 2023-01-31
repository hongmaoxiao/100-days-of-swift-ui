//
//  AddView.swift
//  iExpense
//
//  Created by xhm on 2023/2/1.
//

import SwiftUI

struct AddView: View {
    @ObservableObject var expenses: Expenses
    
    @State private var name = ""
    @State private var type = "Person"
    @State private var amount = 0.0
    
    let types = ["Business", "Person"]
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                
                Picker("Type", selection: $type) {
                    ForEach(types, id: \.self) {
                        Text($0)
                    }
                }
                
                TextField("Amount", value: $amount, format: .currency(code: "USD"))
                    .keyboardType(.decimalPad)
            }.navigationTitle("Add new expense")
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(expenses: Expenses())
    }
}
