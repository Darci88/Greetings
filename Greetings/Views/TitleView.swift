//
//  TitleView.swift
//  Greetings
//
//  Created by user219285 on 3/17/23.
//

import SwiftUI

/// This contains the App title and a randomly changing subtitle upon tap and a colorful circle that rotates on tap
struct TitleView: View {
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0
    
    var body: some View {
        HStack {
          GreetingsTextView(captionIndex: $captionIndex)
            Spacer()
           RotatableCircleView(isRotated: $isRotated)
        }.padding()
    }
}

struct VerticalTitleView: View {
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0
    
    var body: some View {
        VStack (alignment: .center) {
          GreetingsTextView(captionIndex: $captionIndex)
           Spacer()
           RotatableCircleView(isRotated: $isRotated)
            Spacer()
            Spacer()
            Spacer()
            Spacer()
        }.padding()
    }
}

//MARK: Circle
struct RotatableCircleView: View {
    @Binding var isRotated: Bool
    var body: some View{
        Circle()
            .strokeBorder(AngularGradient(gradient: Gradient(colors: [.blue, .green, .red, .yellow, .blue]),
                                          center: .center,
                                          angle: .zero),
                          lineWidth: 15)
            .rotationEffect(isRotated ? .zero : .degrees(-180))
            .frame(maxWidth: 70, maxHeight: 70)
            .onTapGesture {
                withAnimation (Animation.spring()){
                    isRotated.toggle()
                }
            }
    }
}

//MARK: Text
struct GreetingsTextView: View {
    @Binding var captionIndex: Int
    
    //List of captions
    let caption: [LocalizedStringKey] = [LocalizedStringKey("Exploring iOS 16 programming"),
                             LocalizedStringKey("Learning how to bake"),
                             LocalizedStringKey("Programing recipes"),
                             LocalizedStringKey("A quest for knowledge")]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5.0) {
            Text(LocalizedStringKey("Greeting"))
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(caption[captionIndex])
                .font(.headline)
                .fontWeight(.thin)
        }.padding()
            .onTapGesture {
                captionIndex = Int.random(in: 0..<caption.count)
            }

    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
        VerticalTitleView()
    }
}
