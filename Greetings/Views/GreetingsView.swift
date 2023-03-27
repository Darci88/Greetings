//
//  ContentView.swift
//  Greetings
//
//  Created by user219285 on 3/16/23.
//

import SwiftUI

/// This is the main view of the Greetings app
struct GreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack (alignment: .leading) {
                TitleView()
                Spacer()
                MessagesView()
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsView()
        GreetingsView()
            .preferredColorScheme(.dark)
    }
}
