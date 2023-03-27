//
//  DataItemModel.swift
//  Greetings
//
//  Created by user219285 on 3/17/23.
//

import Foundation
import SwiftUI

/// This is the data model of the messages that will appear in the app
/// It contains a text string and a color
/// Moreover it inherits from the Identifiable protocol
struct DataItemModel: Identifiable {
    let id = UUID()
    let text: LocalizedStringKey
    let color: Color
}
