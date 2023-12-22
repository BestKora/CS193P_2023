//
//  MemorizeApp.swift
//  Memorize
//
//  Created by CS193P instructor on 4/03/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @State var game = EmojiMemoryGame ()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView (viewModel: game)
        }
    }
}



