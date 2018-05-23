//
//  LoggedInController.swift
//  RainbowSixApp
//
//  Created by Danny Cameron on 5/23/18.
//  Copyright © 2018 DCEJ. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoggedInController: UIViewController {

    @IBAction func logoutTapped(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            
         dismiss(animated: true, completion: nil)
            
        } catch {
            print("There was problem loggin out.")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    


}
