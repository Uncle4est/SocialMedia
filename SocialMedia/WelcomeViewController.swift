//
//  WelcomeViewController.swift
//  SocialMedia
//
//  Created by Nicholas Smith on 10/2/22.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userNameLabel.text = "Welcome \(userName ?? "")"
    }
}
