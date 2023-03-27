//
//  LanguageOptionsView.swift
//  Greetings
//
//  Created by user219285 on 3/17/23.
//

import SwiftUI



struct LanguageOptionsView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu{
                Button(action: {
                    language = "en"
                    layoutDirectionString = LEFT_TO_RIGHT
                }, label: {Text("English")})
                
                Button(action: {
                    language = "es"
                    layoutDirectionString = LEFT_TO_RIGHT
                }, label: {Text("Spanish")})
                
                Button(action: {
                    language = "hr"
                    layoutDirectionString = LEFT_TO_RIGHT
                }, label: {Text("Croatian")})
            }
    }
}

struct LanguageOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageOptionsView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
    }
}
