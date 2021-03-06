//
//  CardContents.swift
//  QuizJam
//
//  Created by Chaithra Pabbathi on 2/19/21.
//

import SwiftUI

struct CardContents: View {
    var contents: String
    var flipped: Bool
    
    var body: some View {
        Text(contents)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .foregroundColor(flipped ? Color.red : Color.fontColor)
            .font(.title)
            .padding(20)
            .rotation3DEffect(
                flipped ? .degrees(180) : .zero,
                axis: (x: 0.0, y: 1.0, z: 0.0))
            .animation(.none)
    }
}

struct CardContents_Previews: PreviewProvider {
    static var previews: some View {
        CardContents(contents: "What is your name?", flipped: false)
    }
}
