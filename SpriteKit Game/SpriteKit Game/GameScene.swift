//
//  GameScene.swift
//  SpriteKit Game
//
//  Created by Federico Agnello on 25/06/24.
//

import SpriteKit

class GameScene: SKScene {
    override func didMove(to view: SKView){
        let rectangle = SKSpriteNode(color: SKColor.yellow, size: CGSize(width: 300, height: 150))
        rectangle.position = CGPoint(x: -200, y: -300)
        rectangle.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        scene?.addChild(rectangle)
        
        let square = SKSpriteNode(color: SKColor.red, size: CGSize(width: 100, height: 100))
        square.position = CGPoint(x: 0, y: 0)
        square.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        rectangle.addChild(square)
    }
}
