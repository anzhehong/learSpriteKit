//
//  GameScene.swift
//  testSpriteKit
//
//  Created by FOWAFOLO on 16/1/27.
//  Copyright (c) 2016年 TAC. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!"
        myLabel.fontSize = 30
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        
        var label1 = childNodeWithName("label1") as! SKLabelNode
        label1.text = "哈哈哈你好棒"
        
        self.addChild(myLabel)
        
        physicsBody = SKPhysicsBody(edgeLoopFromRect: self.frame)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
//            self.addChild(sprite)
            
            // droping labels
            var dropLabel = SKLabelNode()
//            dropLabel.text = "I'm dropping down~"
            dropLabel.text = "小宇"
            dropLabel.position = location
            addChild(dropLabel)
            dropLabel.physicsBody = SKPhysicsBody(rectangleOfSize: dropLabel.frame.size)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
