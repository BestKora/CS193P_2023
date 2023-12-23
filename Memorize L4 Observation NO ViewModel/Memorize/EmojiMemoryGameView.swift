//
//  ContentView.swift
//  Memorize
//
//  Created by CS193P instructor on 4/03/23.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    var game: MemoryGame<String>
    
    var body: some View {
        VStack{
            ScrollView {
                cards
            }
            Button ("Shuffle"){
                game.shuffle()
            }
        }
            .padding()
        }
    
    var cards: some View {
        LazyVGrid (columns:
                    [GridItem(.adaptive(minimum: 85), spacing: 0)],spacing:0){
            ForEach(game.cards.indices,  id: \.self){ index in
                CardView(game.cards[index])
                    .aspectRatio(2/3,contentMode: .fit)
                    .padding(2)
            }
        }
        .foregroundColor(.orange)
    }
}

struct CardView: View {
    let card: MemoryGame<String>.Card
    
    init(_ card: MemoryGame<String>.Card) {
        self.card = card
    }
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(card.content)
                    .font(.system(size: 200))
                    .minimumScaleFactor(0.01)
                    .aspectRatio(1, contentMode: .fit)
            }
            .opacity(card.isFaceUp ? 1 : 0)
            
            base.fill().opacity(card.isFaceUp ? 0 : 1)
        }
    }
}

#Preview {
    struct Preview: View {
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
         @State var game = createMemoryGame()
         var body: some View {
            EmojiMemoryGameView(game: game)
        }
    }
    return Preview()
}

