//
//  ViewController.swift
//  8 Ball
//
//  Created by ERNEST MURIUKI on 2/17/20.
//  Copyright © 2020 ERNEST MURIUKI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var balImageView: UIImageView!
    
    var randomValue = 0
    
    let ansArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateBallFaces()
        
    }
    
    func updateBallFaces(){
        
        randomValue = Int(arc4random_uniform(5))
        balImageView.image = UIImage(named: ansArray[randomValue])
        
    }

    @IBAction func askButton(_ sender: Any) {
        updateBallFaces()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallFaces()
    }
}

