//
//  ArrangeFlowers2.swift
//  SpriteKit Exercises
//
//  Created by Federico Agnello on 25/06/24.
//
// Challenge: Arrange 9 flowers in the same position of the picture

import SpriteKit

class ArrangeFlowers2: SKScene {
    
    override func didMove(to view: SKView) {
        let xMid = 0
        let yMid = 0
        let sceneHeight = self.size.height
        let sceneWidth = self.size.width
        
        let flower1 = SKSpriteNode(imageNamed: "flower-OY")
        flower1.position = CGPoint(x: xMid, y: yMid)
        flower1.setScale(0.5)
        scene?.addChild(flower1)
        
        let flower2 = SKSpriteNode(imageNamed: "flower-VO")
        flower2.position = CGPoint(x: xMid + 200, y: yMid - 250)
        flower2.setScale(0.5)
        scene?.addChild(flower2)
        
        let flower3 = SKSpriteNode(imageNamed: "flower-VO")
        flower3.position = CGPoint(x: xMid + 200, y: yMid + 250)
        flower3.setScale(0.5)
        scene?.addChild(flower3)
        
        let flower4 = SKSpriteNode(imageNamed: "flower-VO")
        flower4.position = CGPoint(x: xMid - 200, y: yMid - 250)
        flower4.setScale(0.5)
        scene?.addChild(flower4)
        
        let flower5 = SKSpriteNode(imageNamed: "flower-VO")
        flower5.position = CGPoint(x: xMid - 200, y: yMid + 250)
        flower5.setScale(0.5)
        scene?.addChild(flower5)
        
        let flower6 = SKSpriteNode(imageNamed: "flower-BY")
        flower6.position = CGPoint(x: sceneWidth / 2, y: sceneHeight / 2)
        flower6.setScale(0.5)
        scene?.addChild(flower6)
        
        let flower7 = SKSpriteNode(imageNamed: "flower-BY")
        flower7.position = CGPoint(x: -sceneWidth / 2, y: sceneHeight / 2)
        flower7.setScale(0.5)
        scene?.addChild(flower7)
        
        let flower8 = SKSpriteNode(imageNamed: "flower-BY")
        flower8.position = CGPoint(x: sceneWidth / 2, y: -sceneHeight / 2)
        flower8.setScale(0.5)
        scene?.addChild(flower8)
        
        let flower9 = SKSpriteNode(imageNamed: "flower-BY")
        flower9.position = CGPoint(x: -sceneWidth / 2, y: -sceneHeight / 2)
        flower9.setScale(0.5)
        scene?.addChild(flower9)
    }
}

