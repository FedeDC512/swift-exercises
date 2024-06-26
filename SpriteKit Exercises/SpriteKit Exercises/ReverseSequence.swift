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
        let flower = SKSpriteNode(imageNamed: "flower-GB")
        flower.position = CGPoint(x: -300, y: 300)
        flower.name = "Player"
        flower.setScale(0.5)
        scene?.addChild(flower)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let touchLocation = touch!.location(in: self)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let touchLocation = touch!.location(in: self)
        let node = self.atPoint(touchLocation)
        if node.name == "Player" {
            let moveRight = SKAction.moveBy(x: 600, y: 0, duration: 0.5)
            let moveDown = SKAction.moveBy(x: 0, y: -600, duration: 0.5)
            let moveLeft = SKAction.moveBy(x: -600, y: 0, duration: 0.5)
            let moveUp = SKAction.moveBy(x: 0, y: 600, duration: 0.5)
            let movement = SKAction.sequence([moveRight, moveDown, moveLeft, moveUp])
            let sequence = SKAction.sequence([movement, movement.reversed()])
            node.run(sequence)
        }
    }
}

