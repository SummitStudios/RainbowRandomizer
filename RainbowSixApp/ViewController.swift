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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func defensePressed(_ sender: Any) {
        // Randomize Ops
        let randomOptwo = arc4random_uniform(20) + 1
        
        // Update Op Image
        operatorView.image = UIImage(named: "Dop\(randomOptwo)")
    }
    @IBAction func buttonPressed(_ sender: Any) {
        
        // Randomize Ops
        let randomOp = arc4random_uniform(18) + 1
        
        // Update Op Image
        operatorView.image = UIImage(named: "op\(randomOp)")
    }
    

}

