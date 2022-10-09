//
//  WelcomeViewController.swift
//  SocialMedia
//
//  Created by Nicholas Smith on 10/2/22.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome \(user.person.fullName)"
    }
}
