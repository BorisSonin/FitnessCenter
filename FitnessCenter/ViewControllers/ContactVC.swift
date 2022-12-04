//
//  ContactVC.swift
//  FitnessCenter
//
//  Created by Анастасия Булдакова on 30.11.2022.
//

import UIKit



class ContactVC: UIViewController {

    
    @IBOutlet var adressLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var workHourseLabel: UILabel!

    
    var center = Contacts.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adressLabel.text = center.adress
        phoneLabel.text = center.phone
        workHourseLabel.text = center.workingHours
    }
    
// MARK: - IBAction
    @IBAction func backCallButton() {
        showAlert(withTitle: "Дорогой клиент!", andMessage: "Наш оператор свяжется с Вами в ближайшее время!")
    }
}

// MARK: - Extension
extension ContactVC {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ок", style: .default) { _ in
           // self.textField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
