//
//  Flower3.swift
//  SpriteKit Exercises
//
//  Created by Federico Agnello on 25/06/24.
//
// Challenge: Create a simple app that adds a new sprite to the scene every time the user presses a button
// Challenge: Starting from the previous app, add a new sprite to the scene every time the user touch another sprite

import SpriteKit

class Flower3: SKScene {
    
    
    override func didMove(to view: SKView) {
        let xMid = 0
        let yMid = 0
        
        let startButton = SKSpriteNode(imageNamed: "flower-OY")
        startButton.position = CGPoint(x: xMid, y: yMid)
        startButton.setScale(0.5)
        startButton.name = "StartButton"
        scene?.addChild(startButton)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let touchLocation = touch!.location(in: self)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let sceneHeight = self.size.height
        let sceneWidth = self.size.width
        let scale = SKAction.scale(by: 2, duration: 0.6)
        let fade = SKAction.fadeOut(withDuration: 0.5)
        let hide = SKAction.hide()
        let delete = SKAction.removeFromParent()
        let sound = SKAction.playSoundFileNamed("sound", waitForCompletion: false)
        let sequence = SKAction.sequence([sound, scale, fade, hide, delete])
        
        let touch = touches.first
        let touchLocation = touch!.location(in: self)
        let node = self.atPoint(touchLocation)
        if node.name == "StartButton" {
            let flower = SKSpriteNode(imageNamed: "flower-BY")
            flower.position = CGPoint(x: Int.random(in: -Int(sceneWidth/2)...Int(sceneWidth/2)), y: Int.random(in: -Int(sceneHeight/2)...Int(sceneHeight/2)))
            flower.setScale(0.5)
            scene?.addChild(flower)
        } else if node != scene {
            node.run(sequence)
        }
    }
}

