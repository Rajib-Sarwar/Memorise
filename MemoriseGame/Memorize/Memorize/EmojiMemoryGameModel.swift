//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Chowdhury Md Rajib  Sarwar on 17/10/22.
//

import SwiftUI


class EmojiMemoryGameModel: ObservableObject {
    static let emojis = ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🚚", "🚛", "🚜", "🛴", "🚲", "🛵", "🏍", "🚨", "🚔", "🚍", "🚘", "🚖", "🚡", "🚠", "🚟", "🚃", "🚋", "🚞", "🚝", "🚄", "🚅", "🚈", "🚂", "🚆", "🚇", "🚊", "🚉", "🚁", "🛩", "✈️", "🛫", "🛬", "🚀", "🛰", "💺", "🛶", "⛵️", "🛥", "🚤", "🛳", "⛴", "🚢", "⚓️", "🚧", "⛽️", "🚏", "🚦", "🚥", "🗺", "🗿", "🗽", "⛲️", "🗼", "🏰", "🏯", "🏟", "🎡", "🎢", "🎠", "⛱", "🏖", "🏝", "⛰", "🏔", "🗻", "🌋", "🏜", "🏕", "⛺️", "🛤", "🛣", "🏗", "🏭", "🏠", "🏡", "🏘", "🏚", "🏢", "🏬", "🏣", "🏤", "🏥", "🏦", "🏨", "🏪", "🏫", "🏩", "💒", "🏛", "⛪️", "🕌", "🕍", "🕋", "⛩", "🗾", "🎑", "🏞", "🌅", "🌄", "🌠", "🎇", "🎆", "🌇", "🌆", "🏙", "🌃", "🌌", "🌉", "🌁","🦗","🛸","🛷","🥌"]
    
    static func createMemoryGame() -> EmojiMemoryGameViewModel<String> {
        EmojiMemoryGameViewModel<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private(set) var model = createMemoryGame()
    typealias Card = EmojiMemoryGameViewModel<String>.Card
    
    var cards: Array<Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    func choose(_ card: Card) {
        model.choose(card)
    }
}
