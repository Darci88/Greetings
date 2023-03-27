//
//  TextView.swift
//  Greetings
//
//  Created by user219285 on 3/17/23.
//

import SwiftUI

/// This is the text view in the app whose colors can change randomly after being tap
struct TextView: View {
    let text: LocalizedStringKey
    @State var color: Color
    
    let colors: [Color] = [.red, .green, .blue, .orange, .yellow, .purple,
                           Color(red: 0.5, green: 0.0, blue: 0.5),
                           Color(red: 0.0, green: 0.5, blue: 0.5),
                           Color(red: 139/255, green: 207/255, blue: 240/255),
                           Color(red: 1, green: 215/255, blue: 0)]
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .padding()
            .background(color.opacity(0.8))
            .cornerRadius(20)
            .shadow(color: color, radius: 5, x: 10, y: 10)
            .onTapGesture {
                let length = colors.count
                let randomIndex = Int.random(in: 0..<length)
                color = colors[randomIndex]
            }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                TextView(text: "Hello", color: .purple)
                TextView(text: "How do you do", color: .red)
                TextView(text: "Bye", color: .blue)
            }
        }
    }
}
