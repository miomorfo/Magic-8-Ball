//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Fernando Escobar Barraza on 11/7/18.
//  Copyright © 2018 Fernando Escobar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2","ball3", "ball4", "ball5"]
    var randomBallNumber = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeBall()
    }
    
    
    @IBAction func askButtonPressed(_ sender: Any) {
        changeBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeBall()
    }

    func changeBall(){
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage.init(named: ballArray[randomBallNumber])
    }


}

