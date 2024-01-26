//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by CS193P instructor on 4/03/23.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias  Card = MemoryGame<String>.Card
    private static let emojis =
        ["👻","🎃","🕷️","😈","💀","🕸️","🧙‍♀️","🙀","👹","😱","☠️","🍭"]
    
    private static func createMemoryGame() -> MemoryGame<String>{
        return MemoryGame( numberOfPairsOfCards: 2) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            } else {
                return "⁉️"
            }
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
       model.cards
    }
    
    var color: Color {
        .orange
    }
    
    // MARK: - Intents
    func shuffle() {
        model.shuffle()
    }
    
    func choose (_ card: Card) {
        return model.choose(card)
    }
}
