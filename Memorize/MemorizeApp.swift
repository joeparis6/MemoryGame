//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Joe Paris on 5/21/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
