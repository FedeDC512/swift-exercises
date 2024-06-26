//
//  Runner.swift
//  SpriteKit Exercises
//
//  Created by Federico Agnello on 25/06/24.
//

import SpriteKit

class Runner: SKScene {
    override func didMove(to view: SKView) {
        let runner = SKSpriteNode (imageNamed: "r1")
        runner.position = CGPoint(x: -600, y: 250)
        let s1 = SKTexture(imageNamed: "r1")
        let s2 = SKTexture(imageNamed: "r2")
        let s3 = SKTexture(imageNamed: "r3")
        let s4 = SKTexture(imageNamed: "r4")
        let s5 = SKTexture(imageNamed: "r5")
        let s6 = SKTexture(imageNamed: "r6")
        let s7 = SKTexture(imageNamed: "r7")
        let s8 = SKTexture(imageNamed: "r8")
        let s9 = SKTexture(imageNamed: "r9")
        let s10 = SKTexture(imageNamed: "r10")
        let s11 = SKTexture(imageNamed: "r11")
        let s12 = SKTexture(imageNamed: "r12")
        let passi = SKAction.playSoundFileNamed("passi", waitForCompletion: false)
        let runAction1 = SKAction.animate(with: [ s1, s2 ], timePerFrame: 0.1)
        let runAction2 = SKAction.animate(with: [ s3, s4, s5, s6, s7, s8 ], timePerFrame: 0.1)
        let runAction3 = SKAction.animate(with: [ s9, s10, s11, s12], timePerFrame: 0.1)
        
        let runAction = SKAction.sequence([runAction1, passi, runAction2, passi, runAction3])
        let move = SKAction.moveBy(x: 1200, y: 0, duration: 4.5)
        let mirror = SKAction.scaleX(to: -1.0, duration: 0.1)
        let mirror2 = SKAction.scaleX(to: 1.0, duration: 0.1)
        let moveSequence = SKAction.sequence ([move, mirror, move.reversed(), mirror2])
        
        runner.run(SKAction.repeatForever(runAction))
        runner.run(SKAction.repeatForever(moveSequence))
        scene?.addChild(runner)
    }
}

