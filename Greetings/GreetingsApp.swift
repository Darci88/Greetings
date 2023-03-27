//
//  GreetingsApp.swift
//  Greetings
//
//  Created by user219285 on 3/16/23.
//

import SwiftUI

let LEFT_TO_RIGHT = "leftToRight"
let RIGHT_TO_LEFT = "rightToLeft"

@main
struct GreetingsApp: App {
    @AppStorage("language") var language: String = "en"
    @AppStorage("layoutDirectionString") var layoutDirectionString: String = LEFT_TO_RIGHT
    
    var layoutDirection: LayoutDirection {
        layoutDirectionString == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }

    var body: some Scene {
        WindowGroup {
            MainView(language: $language, layoutDirectionString: $layoutDirectionString)
                .environment(\.locale, Locale(identifier: language))
                .environment(\.layoutDirection, layoutDirection)
        }
    }
}
