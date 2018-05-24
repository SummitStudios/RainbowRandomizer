//
//  CreateAccountController.swift
//  RainbowSixApp
//
//  Created by Danny Cameron on 5/24/18.
//  Copyright © 2018 DCEJ. All rights reserved.
//

import UIKit

class CreateAccountController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let border = CALayer()
        let width = CGFloat(2.0)
        border.borderColor = UIColor.darkGray.cgColor
        border.frame = CGRect(x: 0, y: usernameTextField.frame.size.height - width, width:  usernameTextField.frame.size.width, height: usernameTextField.frame.size.height)
        
        border.borderWidth = width
        usernameTextField.layer.addSublayer(border)
        usernameTextField.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        
    }
    

}
