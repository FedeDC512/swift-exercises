//
//  Timer.swift
//  SpriteKit Exercises
//
//  Created by Federico Agnello on 26/06/24.
//

import SpriteKit

class Timer: SKScene {
    var label1 = SKLabelNode()
    var label2 = SKLabelNode()
    var previousTime = TimeInterval()
    var timerValue = 0
    var frameValue = 0
    
    override func didMove(to view: SKView){
        label1 = SKLabelNode()
        label1.fontSize = 100
        label1.position = CGPoint(x: 0, y: 250)
        label1.text = String(timerValue)
        scene?.addChild(label1)
        
        label2 = SKLabelNode()
        label2.fontSize = 100
        label2.position = CGPoint(x: 0, y: 0)
        label2.text = String(frameValue)
        scene?.addChild(label2)
    }
    override func update(_ currentTime: TimeInterval) {
        if previousTime > 0 {
            if (currentTime - previousTime) > 1 {
                previousTime = currentTime
                timerValue += 1
                label1.text = String(timerValue)
                scene?.run(SKAction.playSoundFileNamed("sound", waitForCompletion: true))
            }
        } else {
            previousTime = currentTime
        }
        frameValue += 1
        label2.text = String(frameValue)
    }
}
