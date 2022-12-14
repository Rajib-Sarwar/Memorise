//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Chowdhury Md Rajib  Sarwar on 15/10/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = MemoryGameModel()
    
    var body: some Scene {
        WindowGroup {
            MemoryGameView(game: game)
        }
    }
}
