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
    
    //var user = Contacts! нужно передавать через prepare c главного экрана при нажатии на иконку телефона
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adressLabel.text = "ул. Садовая 13А" // сюда вместо текста через экземпляр модели - текст
        phoneLabel.text = "+7 495 675 33 44"
        workHourseLabel.text = "пн-вс, круглосуточно"
        supportPhoneLabel.text =  "8 800 345 78 95"
        
    }
    


}
/*
    struct Contacts {
        
        let city: String
        let adress: String
        let phone: String
        let workingHours: String
        let support: String
        
        static func getContacts() -> Contacts {
            Contacts(
                city: "Москва",
                adress: "ул. Садовая 13А",
                phone: "+7 495 675 33 44",
                workingHours: "пн-вс, круглосуточно",
                support: "8 800 345 78 95"
            )
        }
    }
}

*/
/*class ContactVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
*/
