//
//  ViewController.swift
//  RainbowSixApp
//
//  Created by Danny Cameron on 5/17/18.
//  Copyright © 2018 DCEJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var operatorView: UIImageView!
    
    @IBOutlet weak var attacklabel: UILabel!
    
    @IBOutlet weak var defenselabel: UILabel!
    
    @IBOutlet weak var attackbuttonborder: UIButton!
    
    @IBOutlet weak var defensebuttonborder: UIButton!
    
    @IBOutlet weak var welcomeScreenStackView: UIStackView!
    
    @IBOutlet weak var rootStackView: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // attack label border
        attacklabel.layer.borderWidth = 2.0
        attacklabel.layer.borderColor = UIColor.white.cgColor
        
        // defense label border
        defenselabel.layer.borderWidth = 2.0
        defenselabel.layer.borderColor = UIColor.white.cgColor
        
        // attack button border
        attackbuttonborder.layer.borderWidth = 2.0
        attackbuttonborder.layer.borderColor = UIColor.white.cgColor
        
        // defenese button border
        defensebuttonborder.layer.borderWidth = 2.0
        defensebuttonborder.layer.borderColor = UIColor.white.cgColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func defensePressed(_ sender: UIButton) {
            sender.pulsate()
        // Randomize Ops
        let randomOptwo = arc4random_uniform(19) + 1
        
        // Update Op Image
        operatorView.image = UIImage(named: "Dop\(randomOptwo)")
        
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
            sender.pulsate()
        // Randomize Ops
        let randomOp = arc4random_uniform(21) + 1
        
        // Update Op Image
        operatorView.image = UIImage(named: "op\(randomOp)")
    }
   
    @IBAction func welcomeButtonPressed(_ sender: Any) {
    
    rootStackView.isHidden = false
    welcomeScreenStackView.isHidden = true
    
    }
    
    

}

