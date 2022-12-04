//
//  User.swift
//  FitnessCenter
//
//  Created by Алишер Маликов on 01.12.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let height: Int
    let weigth: Int
    let age: Int
    let achivments: [String]
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Вася",
            surname: "Пупкин",
            photo: "User Photo",
            height: 180,
            weigth: 80,
            age: 25,
            achivments: ["бег",
                        "борьба",
                        "плавание"]
        )
    }
}



