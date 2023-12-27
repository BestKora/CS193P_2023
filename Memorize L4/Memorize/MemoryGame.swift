//
//  MemorizeGame.swift
//  Memorize
//
// Created by CS193P instructor on 4/03/23.
//

import Foundation

struct MemoryGame <CardContent> {
    private (set) var cards: Array<Card>
    
    init (numberOfPairsOfCards: Int, myCardContentFactory: (Int)->CardContent ){
        cards = []
        //add numberOfPairsOfCards * 2 cards
        for pairIndex in 0..<max(2,numberOfPairsOfCards) {
            let content = myCardContentFactory(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    func choose (_ card: Card){
        
    }
    
    mutating func shuffle() {
        cards.shuffle()
        print(cards)
    }
    
    struct Card   {
        var isFaceUp = true
        var isMatched = false
        let content: CardContent
    }
}

