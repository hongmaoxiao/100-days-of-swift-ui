//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by xhm on 2023/1/16.
//

import SwiftUI

struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.blue)
            .clipShape(Capsule())
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 50))
    }
}

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding()
                .background(.black)
        }
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct ContentView: View {
    var motto1: some View {
        Text("Draco dormiens")
    }
    let motto2 = Text("nunquam titillandus")
    
    var spells: some View {
        VStack {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    
    var spells1: some View {
        Group {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    
    @ViewBuilder var spells3: some View {
        Text("Lumos")
        Text("Obliviate")
    }
    
    @State private var useRedText = false
    @State private var selection = 0
    
    @State private var agreedToTerms = false
    @State private var agreedToPrivacyPolicy = false
    @State private var agreedToEmails = false
    
    var body: some View {
        let binding = Binding(get: {selection}, set: {selection = $0})
//        VStack {
//            CapsuleText(text: "First")
//                .foregroundColor(.white)
//            CapsuleText(text: "Second")
//                .foregroundColor(.yellow)
//        }
//        Text("Hello, world!")
//            .titleStyle()
//        Color.blue
//            .frame(width: 300, height: 200)
//            .watermarked(with: "Hacking with swift")
        
        let agreeToAll = Binding<Bool>(get: {
            agreedToTerms && agreedToPrivacyPolicy && agreedToEmails
        }, set: {
            agreedToTerms = $0
            agreedToPrivacyPolicy = $0
            agreedToEmails = $0
        })
        
//        return VStack {
//            Picker("Select a number", selection: binding) {
//                ForEach(0..<3) {
//                    Text("Item \($0)")
//                }
//            }
//            .pickerStyle(.segmented)
//        }
        
        return VStack {
            Toggle("Agree to terms", isOn: $agreedToTerms)
            Toggle("Agree to privacy policy", isOn: $agreedToPrivacyPolicy)
            Toggle("Agree to receive shipping emails", isOn: $agreedToEmails)
            Toggle("Agree to all", isOn: agreeToAll)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
