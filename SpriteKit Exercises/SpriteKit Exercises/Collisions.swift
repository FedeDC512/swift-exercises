//
//  Collisions.swift
//  SpriteKit Exercises
//
//  Created by Federico Agnello on 26/06/24.
//

import SpriteKit

class Collisions: SKScene {
    
    override func didMove(to view: SKView) {
        let xMid = 0
        let yMid = 0
        let sceneHeight = self.size.height
        let sceneWidth = self.size.width
        let xPos = (scene?.size.width)!/2
        let yPos = (scene?.size.height)!/1.3
        let flowerDim = (scene?.size.width)!/8
        
        let fa = SKSpriteNode(imageNamed: "flower-BY")
        fa.position = CGPoint(x: xMid - 300, y: yMid + 500)
        fa.setScale(0.5)
        fa.physicsBody = SKPhysicsBody(circleOfRadius: CGFloat(flowerDim / 2))
        fa.physicsBody?.mass = 0.01
        fa.physicsBody?.affectedByGravity = true
        fa.physicsBody?.categoryBitMask = 1
        fa.physicsBody?.collisionBitMask = 24
        scene?.addChild(fa)
        fa.physicsBody?.applyImpulse(CGVector(dx: 0, dy: -3))
        
        let fb = SKSpriteNode(imageNamed: "flower-OY")
        fb.position = CGPoint(x: xMid - 150, y: yMid + 500)
        fb.setScale(0.5)
        fb.physicsBody = SKPhysicsBody(circleOfRadius: CGFloat(flowerDim / 2))
        fb.physicsBody?.mass = 0.01
        fb.physicsBody?.affectedByGravity = true
        fb.physicsBody?.categoryBitMask = 2
        fb.physicsBody?.collisionBitMask = 16
        scene?.addChild(fb)
        fb.physicsBody?.applyImpulse(CGVector(dx: 0, dy: -3))
        
        let fc = SKSpriteNode(imageNamed: "flower-VO")
        fc.position = CGPoint(x: xMid, y: yMid + 500)
        fc.setScale(0.5)
        fc.physicsBody = SKPhysicsBody(circleOfRadius: CGFloat(flowerDim / 2))
        fc.physicsBody?.mass = 0.01
        fc.physicsBody?.affectedByGravity = true
        fc.physicsBody?.categoryBitMask = 4
        fc.physicsBody?.collisionBitMask = 0
        scene?.addChild(fc)
        fc.physicsBody?.applyImpulse(CGVector(dx: 0, dy: -3))
        
        let w1 = SKSpriteNode(color: SKColor.blue, size: CGSize(width: 600, height: 20))
        w1.position = CGPoint(x: -200, y: 300)
        w1.zRotation = -9.8
        scene?.addChild(w1)
        w1.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: w1.size.width, height: w1.size.height))
        w1.physicsBody?.affectedByGravity = false
        w1.physicsBody?.categoryBitMask = 8
        w1.physicsBody?.collisionBitMask = 0
        
        let w2 = SKSpriteNode(color: SKColor.white, size: CGSize(width: 750, height: 20))
        w2.position = CGPoint(x: 0, y: -600)
        scene?.addChild(w2)
        w2.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: w2.size.width, height: w2.size.height))
        w2.physicsBody?.affectedByGravity = false
        w2.physicsBody?.categoryBitMask = 16
        w2.physicsBody?.collisionBitMask = 0
        
        let w3 = SKSpriteNode(color: SKColor.white, size: CGSize(width: 20, height: 800))
        w3.position = CGPoint(x: self.size.width/2, y: -200)
        scene?.addChild(w3)
        w3.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: w3.size.width, height: w3.size.height))
        w3.physicsBody?.affectedByGravity = false
        w3.physicsBody?.categoryBitMask = 16
        w3.physicsBody?.collisionBitMask = 0
        
    }
}
