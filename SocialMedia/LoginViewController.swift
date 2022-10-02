//
//  ViewController.swift
//  SocialMedia
//
//  Created by Nicholas Smith on 10/2/22.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func newAlert(with title: String, and message: String) {
        // Create new Alert
        let dialogMessage = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        // Create OK button with action handler
        let ok = UIAlertAction(
            title: "OK",
            style: .default,
            handler: { (action) -> Void in
            }
        )
        
        //Add OK button to a dialog message
        dialogMessage.addAction(ok)
        
        // Present Alert to
        self.present(dialogMessage, animated: true, completion: nil)
    }
    
    @IBAction func logInButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func nameReminder() {
        newAlert(with: "Oops!", and: "Your name is User 😉")
    }
    
    @IBAction func passwordReminder() {
        newAlert(with: "Oops!", and: "Your password is Password 😉")
    }
}

