//
//  Emoji_ArtApp.swift
//  Emoji Art
//
//  Created by CS193p Instructor on 5/8/23.
//  Copyright (c) 2023 Stanford University
//

import SwiftUI

@main
struct Emoji_ArtApp: App {
    @StateObject var defaultDocument = EmojiArtDocument()
    @State var paletteStore = PaletteStore(named: "Main")
    @State var store2 = PaletteStore(named: "Alternate")
    @State var store3 = PaletteStore(named: "Special")

    var body: some Scene {
        WindowGroup {
//            PaletteManager(
//                stores: [paletteStore, store2, store3],
//                selectedStore: paletteStore
//            )
            EmojiArtDocumentView(document: defaultDocument)
                .environment(paletteStore)
        }
    }
}
