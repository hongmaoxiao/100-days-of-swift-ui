import Cocoa

struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        }
        return false
        
    }
}

var account = BankAccount()
account.deposit(amount: 100)
print(account.funds)
let success = account.withdraw(amount: 200)

if success {
    print("Withdraw money successfully")
} else {
    print("Failed to get the money")
}
