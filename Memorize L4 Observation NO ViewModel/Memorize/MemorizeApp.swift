//
//  MemorizeApp.swift
//  Memorize
//
//  Created by CS193P instructor on 4/03/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    //------------------------------------------
   static let emojis =
        ["👻","🎃","🕷️","😈","💀","🕸️","🧙‍♀️","🙀","👹","😱","☠️","🍭"]
    
    static func createMemoryGame() -> MemoryGame<String>{
        return MemoryGame( numberOfPairsOfCards: 16) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            } else {
                return "⁉️"
            }
        }
    }
    //----------------------------------------
    //  @State var game = EmojiMemoryGame ()
    @State var game = createMemoryGame()
  
    
    var body: some Scene {
        WindowGroup {
          //  EmojiMemoryGameView (viewModel: game)
            EmojiMemoryGameView (game: game)
        }
    }
}



