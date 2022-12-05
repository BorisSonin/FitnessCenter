//
//  ContactsModels.swift
//  FitnessCenter
//
//  Created by Анастасия Булдакова on 30.11.2022.
//


struct Contacts {
    let city: String
    var address: String
    let phone: String
    let workingHours: String
    let support: String
    
    static func getContacts() -> Contacts {
        Contacts(
            city: "Москва",
            address: "Новинский бульвар, 16с4",
            phone: "+7 495 675 33 44",
            workingHours: "пн-вс, круглосуточно",
            support: "8 800 345 78 95"
        )
    }
}

