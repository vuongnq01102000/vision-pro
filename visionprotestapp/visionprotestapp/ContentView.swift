//
//  ContentView.swift
//  visionprotestapp
//
//  Created by Quoc Vuong on 7/1/24.
//

import SwiftUI
import RealityKit
import RealityKitContent


struct ContentView: View {
    @State private var showImmersiveSpace = false
    @State private var immersiveSpaceIsShow = false
    
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    
    
    var diceData : DiceData
    
    var body: some View {
        
        VStack {
          

            Text(diceData.rolledNumber == 0 ?  "🎲" : "\(diceData.rolledNumber)")
                .foregroundStyle(.yellow)
                .font(.custom("Menlo", size: 100))
                .bold()
        }
        .padding()
        .task {
            await openImmersiveSpace(id: "ImmersiveSpace")
        }
        
    }
}

#Preview(windowStyle: .automatic) {
    ContentView(diceData: DiceData())
}



  
