//
//  MemorizeGame.swift
//  Memorize
//
// Created by CS193P instructor on 4/03/23.
//

import Foundation

struct MemoryGame <CardContent> {
    var cards: Array<Card>
    
    func choose (card:Card) {
        
    }
    
    struct Card  {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
