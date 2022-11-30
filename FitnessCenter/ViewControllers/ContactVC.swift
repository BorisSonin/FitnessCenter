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
    @IBOutlet var supportPhoneLabel: UILabel!
    
    var center = Contacts.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adressLabel.text = center.adress
        phoneLabel.text = center.phone
        workHourseLabel.text = center.workingHours
        supportPhoneLabel.text =  center.support
        
    }
}
