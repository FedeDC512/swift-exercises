//
//  ContentView.swift
//  SpriteKit Exercises
//
//  Created by Federico Agnello on 26/06/24.
//

import SwiftUI
import SpriteKit

struct ContentView: View {
    var scene: SKScene {
        //let scene = SKScene(fileNamed: "GameScene")
        //let scene = SKScene(fileNamed: "ArrangeFlowers1")
        //let scene = SKScene(fileNamed: "ArrangeFlowers2")
        //let scene = SKScene(fileNamed: "SpawnFlowers")
        //let scene = SKScene(fileNamed: "DragFlowers")
        //let scene = SKScene(fileNamed: "ReverseSequence")
        //let scene = SKScene(fileNamed: "RandomSoundAnimation")
        //let scene = SKScene(fileNamed: "Runner")
        //let scene = SKScene(fileNamed: "Timer")
        let scene = SKScene(fileNamed: "Collisions")

        scene!.size = CGSize(width: 750, height: 1334)
        scene?.scaleMode = .aspectFit
        return scene!
    }
    
    
    var body: some View {
        SpriteView(scene: scene)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
