//
//  ChatViewController.swift
//  RainbowSixApp
//
//  Created by Danny Cameron on 5/23/18.
//  Copyright © 2018 DCEJ. All rights reserved.
//

import UIKit
import FirebaseAuth

class ChatViewController: UIViewController {
    
    @IBOutlet weak var emailTextView: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        if Auth.auth().currentUser != nil {
            self.presentLoggedInScreen()
        }
    }
    
    @IBAction func createAccountTapped(_ sender: Any) {
        if let email = emailTextView.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { user, error in
                if let FirebaseError = error {
                print(FirebaseError.localizedDescription)
                    return
        }
         self.presentLoggedInScreen()
        }
        }
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        
        if let email = emailTextView.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { user, error in
                if let FirebaseError = error {
                    print(FirebaseError.localizedDescription)
                    return
            }
            self.presentLoggedInScreen()
        }
        }
    }
    
    func presentLoggedInScreen() {
        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let loggedInVc:LoggedInController = storyboard.instantiateViewController(withIdentifier: "LoggedInController") as! LoggedInController
        self.present(loggedInVc, animated: true, completion: nil)
    }
    
    
    
}
