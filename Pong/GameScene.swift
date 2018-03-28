//
//  GameScene.swift
//  Pong
//
//  Created by Michael Guerfi on 29/03/2018.
//  Copyright © 2018 Michael Guerfi. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var entities = [GKEntity]()
    var graphs = [String : GKGraph]()
    
    var elements = [String: SKSpriteNode]()
    
    override func didMove(to view: SKView) {
        elements["ball"] = self.childNode(withName: "ball") as! SKSpriteNode
        elements["player_top"] = self.childNode(withName: "player_top") as? SKSpriteNode
        elements["player_bottom"] = self.childNode(withName: "player_bottom") as? SKSpriteNode
        
        elements["ball"]?.physicsBody?.applyImpulse( CGVector(dx: -30, dy: -30) )
        
        let frameBody = SKPhysicsBody(edgeLoopFrom: self.frame)
        
        frameBody.friction = 0
        frameBody.restitution = 1
        
        self.physicsBody = frameBody
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            
            
        }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        
        elements["player_top"]?.run( SKAction.moveTo(x: (elements["ball"]?.position.x)!, duration: 0) )
//        elements["player_bottom"]?.run( SKAction.moveTo(x: (elements["ball"]?.position.x)!, duration: 0) )
        
    }
}

