//
//  ViewController.swift
//  SocialMedia
//
//  Created by Nicholas Smith on 10/2/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var loginTextFielf: UITextField!
    @IBOutlet var passwordTextFielf: UITextField!
    
    private let user = User.getProfile()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userInfoVC = navigationVC.topViewController
                guard let userInfoVC = userInfoVC as? UserInfoViewController else {
                    return
                }
                userInfoVC.user = user
            }
        }
    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInButtonPressed(_ sender: UIButton) {
        if loginTextFielf.text == user.login && passwordTextFielf.text == user.password {
            performSegue(withIdentifier: "loginForUser", sender: nil)
        } else {
            passwordTextFielf.text = ""
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
        }
    }
    
    @IBAction func forgotRegistrationData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops!", andMessage: "Your name is \(user.login) 😉")
        : showAlert(withTitle: "Oops!", andMessage: "Your password is \(user.password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTextFielf.text = ""
        passwordTextFielf.text = ""
    }
}

extension LoginViewController {
    func showAlert(withTitle title: String, andMessage message: String) {
        // Create new Alert
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        // Create OK button with action handler
        let ok = UIAlertAction(title: "OK", style: .default)
        
        //Add OK button to a dialog message
        alert.addAction(ok)
        
        // Present Alert to
        self.present(alert, animated: true)
    }
}

