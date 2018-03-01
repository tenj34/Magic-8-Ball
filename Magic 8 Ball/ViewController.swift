//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Juan Tenezaca on 2/27/18.
//  Copyright © 2018 Juan Tenezaca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateImageView()
    }
    
    
    func updateImageView() {
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named : ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImageView()
    }
}

