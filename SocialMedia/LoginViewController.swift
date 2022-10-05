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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = loginTextFielf.text
    }
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInButtonPressed(_ sender: UIButton) {
        if loginTextFielf.text == "User" && passwordTextFielf.text == "Password" {
            performSegue(withIdentifier: "loginForUser", sender: nil)
        } else {
            passwordTextFielf.text = ""
            showAlert(withTitle: "Invalid login or password", andMessage: "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotRegistrationData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops!", andMessage: "Your name is User 😉")
        : showAlert(withTitle: "Oops!", andMessage: "Your password is Password 😉")
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

