//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by CS193P instructor on 4/03/23.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String>
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.c
    }
}
