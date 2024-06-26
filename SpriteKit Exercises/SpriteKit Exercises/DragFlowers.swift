//
//  DragFlowers.swift
//  SpriteKit Exercises
//
//  Created by Federico Agnello on 25/06/24.
//
// Challenge: Create a simple app that allow to move a flower with a finger

import SpriteKit

class DragFlowers: SKScene {
    
    
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
        
        let touch = touches.first
        let touchLocation = touch!.location(in: self)
        let node = self.atPoint(touchLocation)
        if node.name == "StartButton" {
            let flower = SKSpriteNode(imageNamed: "flower-BY")
            flower.position = CGPoint(x: Int.random(in: -Int(sceneWidth/2)...Int(sceneWidth/2)), y: Int.random(in: -Int(sceneHeight/2)...Int(sceneHeight/2)))
            flower.setScale(0.5)
            flower.name = "Paddle"
            scene?.addChild(flower)
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let positionInScene = touch!.location(in: self)
        let touchedNode = self.atPoint(positionInScene)
        if (touchedNode.name == "Paddle") {
            touchedNode.position.x = positionInScene.x
            touchedNode.position.y = positionInScene.y
        }
    }
}

