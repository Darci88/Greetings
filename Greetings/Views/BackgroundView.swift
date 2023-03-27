//
//  BackgroundView.swift
//  Greetings
//
//  Created by user219285 on 3/17/23.
//

import SwiftUI

/// This is background view which contains linear gradient
struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [Color("Blue"), Color(red: 139/255, green: 80/255, blue: 240/255)], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.8)
            .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
