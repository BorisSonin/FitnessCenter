//
//  ContactsModels.swift
//  FitnessCenter
//
//  Created by Анастасия Булдакова on 30.11.2022.
//

import Foundation

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
