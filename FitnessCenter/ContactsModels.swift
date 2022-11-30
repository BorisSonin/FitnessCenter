//
//  ContactsModels.swift
//  FitnessCenter
//
//  Created by Анастасия Булдакова on 30.11.2022.
//


struct Contacts {
    let city: String
    var adress: String
    let phone: String
    let workingHours: String
    let support: String
    
    static func getContacts() -> Contacts{
        Contacts(
            city: "Москва",
            adress: "Новинский бульвар, 16с4",
            phone: "+7 495 675 33 44",
            workingHours: "пн-вс, круглосуточно",
            support: "8 800 345 78 95"
        )
    }
}

