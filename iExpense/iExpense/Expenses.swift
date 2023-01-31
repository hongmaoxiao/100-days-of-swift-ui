//
//  Expenses.swift
//  iExpense
//
//  Created by xhm on 2023/2/1.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
