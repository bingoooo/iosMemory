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
        
        view.backgroundColor = UIColor.greenSea()
        
        buildButtonWithCenter(center: CGPoint(x: view.center.x, y: view.center.y/2.0), title: "Easy", color: UIColor.emerald(), action: #selector(ViewController.onEasyTaped))
        buildButtonWithCenter(center: CGPoint(x: view.center.x, y: view.center.y), title: "Medium", color: UIColor.sunFlower(), action: #selector(ViewController.onMediumTaped))
        buildButtonWithCenter(center: CGPoint(x: view.center.x, y: view.center.y * 3.0/2.0), title: "Hard", color: UIColor.alizarin(), action: #selector(ViewController.onHardTaped))
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

extension UIColor {
    class func greenSea() -> UIColor {
        return UIColor(red: 22.0/255.0, green: 160.0/255.0, blue: 133.0/255.0, alpha: 1.0)
    }
    
    class func emerald () -> UIColor {
        return UIColor(red: 46.0/255.0, green: 204.0/255.0, blue: 113.0/255.0, alpha: 1.0)
    }
    
    class func sunFlower() -> UIColor {
        return UIColor(red: 241.0/255.0, green: 196.0/255.0, blue: 15.0/255.0, alpha: 1.0)
    }
    
    class func alizarin() -> UIColor {
        return UIColor(red: 231.0/255.0, green: 76.0/255.0, blue: 60.0/255.0, alpha: 1.0)
    }
}
