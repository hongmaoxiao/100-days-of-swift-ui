//
//  ContentView.swift
//  BetterRest
//
//  Created by xhm on 2023/1/18.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    let range = Date.now...Date.now.addingTimeInterval(86400)
    var body: some View {
        VStack {
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                .padding()
            DatePicker("Please enter a date", selection: $wakeUp, in: ...Date.now)
                .labelsHidden()
            
            Text(Date.now, format: .dateTime.hour().minute().second())
            Text(Date.now, format: .dateTime.second().minute().hour())
            Text(Date.now, format: .dateTime.day().month().year())
            
            Text(Date.now.formatted(date: .long, time: .shortened))
        }
        
//        VStack {
//            Text(Date.now, format: .dateTime.hour().minute().second())
//            Text(Date.now, format: .dateTime.second().minute().hour())
//            Text(Date.now, format: .dateTime.day().month().year())
//
//            Text(Date.now.formatted(date: .long, time: .shortened))
//        }
    }
    
    func trivialExample() {
        let components = Calendar.current.dateComponents([.hour, .minute], from: Date.now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
