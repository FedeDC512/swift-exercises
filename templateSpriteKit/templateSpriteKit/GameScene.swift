//
//  GameScene.swift
//  templateSpriteKit
//
//  Created by Federico Agnello on 25/06/24.
//

import SpriteKit

class GameScene: SKScene {
    
    
    override func didMove(to view: SKView) {
        let xMid = 0
        let yMid = 0
        
        let startButton = SKSpriteNode(imageNamed: "flower-OY")
        startButton.position = CGPoint(x: xMid, y: yMid)
        startButton.setScale(0.5)
        startButton.name = "StartButton"
        scene?.addChild(startButton)
        
        let player = SKSpriteNode(imageNamed: "flower-GB")
        player.position = CGPoint(x: xMid, y: yMid + 200)
        player.setScale(0.7)
        player.name = "Player"
        scene?.addChild(player)
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
        let sequence = SKAction.sequence([scale, fade, hide, delete])
        let playerSequence = SKAction.sequence([scale, fade, hide])
        
        let touch = touches.first
        let touchLocation = touch!.location(in: self)
        let node = self.atPoint(touchLocation)
        if node.name == "StartButton" {
            let flower = SKSpriteNode(imageNamed: "flower-BY")
            flower.position = CGPoint(x: Int.random(in: -Int(sceneWidth/2)...Int(sceneWidth/2)), y: Int.random(in: -Int(sceneHeight/2)...Int(sceneHeight/2)))
            flower.setScale(0.5)
            flower.name = "Paddle"
            scene?.addChild(flower)
        } else if node.name == "Player" {
            node.run(playerSequence)
            node.run(playerSequence.reversed())
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let positionInScene = touch!.location(in: self)
        let touchedNode = self.atPoint(positionInScene)
        if (touchedNode.name == "Paddle") || (touchedNode.name == "Player") {
            touchedNode.position.x = positionInScene.x
            touchedNode.position.y = positionInScene.y
        }
    }
}
