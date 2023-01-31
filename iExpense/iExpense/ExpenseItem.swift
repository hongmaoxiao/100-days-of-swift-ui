//
//  ExpenseItem.swift
//  iExpense
//
//  Created by xhm on 2023/2/1.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
