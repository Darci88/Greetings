//
//  MessagesView.swift
//  Greetings
//
//  Created by user219285 on 3/17/23.
//

import SwiftUI

/// This is a view that contains a list of messages that change colors randomly upon being tap
struct MessagesView: View {
    let messages = [DataItemModel(text: LocalizedStringKey("Hello there"), color: Color("Green")),
                DataItemModel(text: LocalizedStringKey("Welcome to Swift programming!"), color: Color("Gray")),
                DataItemModel(text: LocalizedStringKey("Are you ready to,"), color: Color("Yellow")),
                DataItemModel(text: LocalizedStringKey("start exploring?"), color: Color("Red")),
                DataItemModel(text: LocalizedStringKey("Boom."), color: Color("Purple"))]
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                ForEach(messages) { dataItem in
                    TextView(text: dataItem.text, color: dataItem.color)
                }
            }.padding()
            Spacer()
        }
        
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
