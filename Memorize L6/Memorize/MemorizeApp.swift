//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Tatiana Kornilova on 07.01.2024.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiMemoryGame ()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView (viewModel: game)
        }
    }
}
