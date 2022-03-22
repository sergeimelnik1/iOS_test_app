//
//  GameScene.swift
//  sec8. Game
//
//  Created by Sergey Melnik on 22.03.2022.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    //вызывается при первом запуске сцены
    override func didMove(to view: SKView) {
        //цвет фона сцены
        backgroundColor = SKColor.black
        //вектор и сила гравитации
        self.physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        //добавляем поддержку физики
        self.physicsBody = SKPhysicsBody(edgeChainFrom: frame as! CGPath)
        //выклчючаем внешние воздействия на игру
        self.physicsBody?.allowsRotation = false
        //включаем отображение отладочной информации
        view.showsPhysics = true
        
        
    }
    
    //вызывается при нажатии на экран
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    //вызывается при прекращении нажатия на экран
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    //вызывается при обрыве нажатия на экран, например, если телефон примет звонок и свернет приложение
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    //вызывается при обработке кадров сцены
    override func update(_ currentTime: TimeInterval) {
    }
}
