//
//  ViewController.swift
//  memory
//
//  Created by Benjamin on 19/10/2016.
//  Copyright © 2016 Benjamin Dant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    enum Difficulty {
        case Easy, Medium, Hard
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

private extension ViewController {
    func setup() {
        view.backgroundColor = UIColor.white
        
        buildButtonWithCenter(center: CGPoint(x: view.center.x, y: view.center.y/2.0), title: "Easy", color: UIColor.green, action: #selector(ViewController.onEasyTaped))
        buildButtonWithCenter(center: CGPoint(x: view.center.x, y: view.center.y), title: "Medium", color: UIColor.yellow, action: #selector(ViewController.onMediumTaped))
        buildButtonWithCenter(center: CGPoint(x: view.center.x, y: view.center.y * 3.0/2.0), title: "Hard", color: UIColor.red, action: #selector(ViewController.onHardTaped))
    }
    
    func buildButtonWithCenter(center: CGPoint, title: String, color: UIColor, action: Selector){
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 200, height: 50))
        button.center = center
        button.backgroundColor = color
        
        button.addTarget(self, action: action, for: UIControlEvents.touchUpInside)
        view.addSubview(button)
    }
}

extension ViewController {
    func onEasyTaped() {
        newGameDifficulty(difficulty: .Easy)
    }
    
    func onMediumTaped() {
        newGameDifficulty(difficulty: .Medium)
    }
    
    func onHardTaped() {
        newGameDifficulty(difficulty: .Hard)
    }
    
    func newGameDifficulty(difficulty: Difficulty){
        switch difficulty {
        case .Easy:
            print("Easy")
        case .Medium:
            print("Medium")
        case .Hard:
            print("Hard")
        }
    }
}
