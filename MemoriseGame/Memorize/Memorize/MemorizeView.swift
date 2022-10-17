//
//  ContentView.swift
//  Memorize
//
//  Created by Chowdhury Md Rajib  Sarwar on 15/10/22.
//

import SwiftUI

struct MemorizeView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                ForEach(viewModel.cards) { card in
                    CardView(card: card)
                        .aspectRatio(2/3, contentMode: .fit)
                }
            }
        }
        .foregroundColor(.red)
        .padding(.horizontal)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20.0)
            if card.isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        Group {
            MemorizeView(viewModel: game)
                .preferredColorScheme(.dark)
            MemorizeView(viewModel: game)
                .preferredColorScheme(.light)
        }
    }
}
