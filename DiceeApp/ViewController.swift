//
//  ViewController.swift
//  Dicee App
//
//  Created by Xcode User on 2018-02-10.
//  Copyright © 2018 Navpreet Kaur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   // var used to declare variables, then we will that variable a name and then the data type and value
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    // Creating an array that store the dice images names
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    // IBOutlet mans Interface Builder Outlet
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }
// functions
    @IBAction func rollButtonPresses(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages()
    {
        //generating a random number
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        //changing the image of dice
        diceImageView1.image = UIImage(named : diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named : diceArray[randomDiceIndex2])
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }

}

