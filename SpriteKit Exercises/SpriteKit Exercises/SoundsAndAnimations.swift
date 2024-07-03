//
//  SoundsAndAnimations.swift
//  SpriteKit Exercises
//
//  Created by Federico Agnello on 26/06/24.
//
// Challenge: Put some flowers in the scene. When the user touch a flower show a different animation and a sound for each flower

import SpriteKit

class SoundsAndAnimations: SKScene {
    
    
    override func didMove(to view: SKView) {
        
        let starly = SKSpriteNode(imageNamed: "starly")
        starly.position = CGPoint(x: 0, y: +250)
        starly.setScale(3)
        starly.name = "starly"
        starly.texture?.filteringMode = .nearest
        scene?.addChild(starly)
        
        let bidoof = SKSpriteNode(imageNamed: "bidoof")
        bidoof.position = CGPoint(x: 0, y: +90)
        bidoof.setScale(3)
        bidoof.name = "bidoof"
        bidoof.texture?.filteringMode = .nearest
        scene?.addChild(bidoof)
        
        let kricketot = SKSpriteNode(imageNamed: "kricketot")
        kricketot.position = CGPoint(x: 0, y: -90)
        kricketot.setScale(3)
        kricketot.name = "kricketot"
        kricketot.texture?.filteringMode = .nearest
        scene?.addChild(kricketot)
        
        let shinx = SKSpriteNode(imageNamed: "shinx")
        shinx.position = CGPoint(x: 0, y: -250)
        shinx.setScale(3)
        shinx.name = "shinx"
        shinx.texture?.filteringMode = .nearest
        scene?.addChild(shinx)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let touchLocation = touch!.location(in: self)
        let node = self.atPoint(touchLocation)
        if node.name == "starly" {
            let cry = SKAction.playSoundFileNamed("starly", waitForCompletion: false)
            let move = SKAction.moveBy(x: 0, y: 100, duration: 0.5)
            let sequence = SKAction.sequence([cry, move, move.reversed()])
            node.run(sequence)
        } else if node.name == "bidoof" {
            let cry = SKAction.playSoundFileNamed("bidoof", waitForCompletion: false)
            let scale = SKAction.scale(by: 1.5, duration: 0.5)
            let sequence = SKAction.sequence([cry, scale, scale.reversed()])
            node.run(sequence)
        } else if node.name == "kricketot" {
            let cry = SKAction.playSoundFileNamed("kricketot", waitForCompletion: false)
            let rotate = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: 1)
            let sequence = SKAction.sequence([cry, rotate])
            node.run(sequence)
        } else if node.name == "shinx" {
            let cry = SKAction.playSoundFileNamed("shinx", waitForCompletion: false)
            let fadeOut = SKAction.fadeOut(withDuration: 0.2)
            let fadeIn = SKAction.fadeIn(withDuration: 0.2)
            let sequence = SKAction.sequence([cry, fadeOut, fadeIn, fadeOut, fadeIn])
            node.run(sequence)
        }
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
    }
}

