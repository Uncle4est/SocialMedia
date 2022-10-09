//
//  InfoViewController.swift
//  SocialMedia
//
//  Created by Nicholas Smith on 10/9/22.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var userBioTextView: UITextView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "\(user.person.fullName) Bio"
        userBioTextView.backgroundColor = .clear
        userBioTextView.textColor = .white
        userBioTextView.text = user.person.info
    }
}
