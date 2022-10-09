//
//  SecondViewController.swift
//  SocialMedia
//
//  Created by Nicholas Smith on 10/9/22.
//

import UIKit

class UserInfoViewController: UIViewController {
    
//    @IBOutlet var photoImage: UIImageView! {
//        didSet {
//            photoImage.layer.cornerRadius = photoImage.frame.height / 2
//        }
//    }
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    @IBOutlet var occupationLAbel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        photoImage.image = UIImage(named: user.person.photo)
        
        title = user.person.fullName
        
        nameLabel.text = user.person.name
        lastNameLabel.text = user.person.surname
        occupationLAbel.text = user.person.occupation
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? InfoViewController else { return }
        infoVC.user = user
    }
}
