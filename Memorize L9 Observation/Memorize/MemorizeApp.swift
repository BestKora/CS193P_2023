//
//  MemorizeApp.swift
//  Memorize
//
//  Created by CS193p Instructor on 4/3/23.
//  Copyright Stanford University 2023
//

import SwiftUI

@main
struct MemorizeApp: App {
    @State var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
