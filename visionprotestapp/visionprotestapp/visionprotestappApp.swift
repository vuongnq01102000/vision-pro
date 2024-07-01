//
//  visionprotestappApp.swift
//  visionprotestapp
//
//  Created by Quoc Vuong on 7/1/24.
//

import SwiftUI
@Observable
class DiceData {
    var rolledNumber = 0
}

@main
struct visionprotestappApp: App {
    @State var diceData = DiceData()
    
    var body: some Scene {
        WindowGroup {
            ContentView(diceData: diceData)
        }
        .defaultSize(width: 100, height: 100)
        
        ImmersiveSpace(id: "ImmersiveSpace"){
            DiceView(diceData: diceData)
        }
    }
}
