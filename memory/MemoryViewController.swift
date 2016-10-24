//
//  MemoryViewController.swift
//  memory
//
//  Created by Benjamin on 24/10/2016.
//  Copyright © 2016 Benjamin Dant. All rights reserved.
//

import Foundation
import UIKit

class MemoryViewController: UIViewController {
    private let difficulty: Difficulty
    
    init(level: Difficulty) {
        self.difficulty = level
        super.init(nibName: nil, bundle: nil)
    }
    
    required init(coder aDecoder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("deinit")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

private extension MemoryViewController {
    func setup(){
        view.backgroundColor = UIColor.greenSea()
    }
}
