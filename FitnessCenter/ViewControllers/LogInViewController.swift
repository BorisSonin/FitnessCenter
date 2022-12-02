//
//  LogInViewController.swift
//  FitnessCenter
//
//  Created by Алишер Маликов on 01.12.2022.
//

import UIKit

class LogInViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var logInLogoImageView: UIImageView!
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Переменные класса
    var user: User!
    
    // MARK: - Overrides Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        logInLogoImageView.image = UIImage(named: "welcome_logo")

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutUserVC = segue.destination as? AboutUserViewController else { return }
        aboutUserVC.user = user
        
    }

    
    // MARK: - IBActions
    @IBAction func logInPressed() {
        guard userNameTextField.text == user.login, passwordTextField.text == user.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password"
            )
            return
        }
        
        performSegue(withIdentifier: "showDiary", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \"\(user.login)\"")
        : showAlert(title: "Oops!", message: "Your password is \"\(user.password)\"")
        
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

//MARK: - Classes Methods
extension LogInViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
