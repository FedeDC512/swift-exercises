//
//  ReverseSequence.swift
//  SpriteKit Exercises
//
//  Created by Federico Agnello on 25/06/24.
//
// Challenge: Starting from the previous example, create a more complex action that executes the sequence of the example and then returns to the starting situation

import SpriteKit

class ReverseSequence: SKScene {
    
    
    override func didMove(to view: SKView) {
        let xMid = 0
        let yMid = 0
        
        let flower = SKSpriteNode(imageNamed: "flower-GB")
        flower.position = CGPoint(x: xMid, y: yMid)
        flower.name = "Player"
        flower.setScale(0.5)
        scene?.addChild(flower)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let touchLocation = touch!.location(in: self)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let sceneHeight = self.size.height
        let sceneWidth = self.size.width
        
        let touch = touches.first
        let touchLocation = touch!.location(in: self)
        let node = self.atPoint(touchLocation)
        if node.name == "Player" {
            // Muovi
            // Reverse
        }
    }
}

