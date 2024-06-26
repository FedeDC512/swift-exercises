//
//  Flower1.swift
//  SpriteKit Exercises
//
//  Created by Federico Agnello on 25/06/24.
//
// Challenge: Arrange the flowers like this image

import SpriteKit

class Flower1: SKScene {
    
    override func didMove(to view: SKView) {
        let xMid = 0
        let yMid = 0
        let flower1 = SKSpriteNode(imageNamed: "flower-BY")
        flower1.position = CGPoint(x: xMid, y: yMid + 250)
        scene?.addChild(flower1)
        
        let flower2 = SKSpriteNode(imageNamed: "flower-GB")
        flower2.position = CGPoint(x: xMid, y: yMid)
        scene?.addChild(flower2)
        
        let flower3 = SKSpriteNode(imageNamed: "flower-OY")
        flower3.position = CGPoint(x: xMid, y: yMid - (125+125/2))
        flower3.setScale(0.5)
        scene?.addChild(flower3)
        
        let flower4 = SKSpriteNode(imageNamed: "flower-VO")
        flower4.position = CGPoint(x: xMid, y: yMid - (250+125/2))
        flower4.setScale(0.5)
        scene?.addChild(flower4)
    }
}
