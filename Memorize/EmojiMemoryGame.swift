//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Joe Paris on 6/10/22.
//

import SwiftUI




class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🚅", "🚀", "🛸", "🚑", "🚁", "🛩", "🚂", "🚟", "🛺", "🏍", "🛵", "🚲", "🛴", "🦼", "🚜", "🚛", "🚚", "🛻", "🚐", "🚒", "🚓", "🏎", "🚎", "🚌"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
        
    
    var cards: Array<Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        objectWillChange.send()
        model.choose(card)
    }
}
