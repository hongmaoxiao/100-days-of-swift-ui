//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by xhm on 2023/1/14.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var scoreTitle = ""
    @State private var showingScore = false
//    @State private var showingAlert = false
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
        //        Button {
        //            print("Button was tapped!")
        //        } label: {
        //            //Image(systemName: "pencil")
        //            Label("Edit", systemImage: "pencil")
        //        }
        
        //        Image(systemName: "pencil")
        
        //        Button("Show Alert") {
        //            showingAlert = true
        //        }
        //        .alert("Important message", isPresented: $showingAlert) {
        //            Button("Delete", role: .destructive) {}
        //            Button("Cancel", role: .cancel) {}
        //        } message: {
        //            Text("Please read this")
        //        }
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                           
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of")
                        .foregroundColor(.white)
                        .font(.subheadline.weight(.heavy))
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                        .font(.largeTitle.weight(.semibold))
                }
                
                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number)
                    } label: {
                        Image(countries[number])
                            .renderingMode(.original)
                            .clipShape(Capsule())
                            .shadow(radius: 5)
                    }
                    
                }
            }
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is ???")
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
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
