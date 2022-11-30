//
//  DataModel.swift
//  FitnessCenter
//
//  Created by Алишер Маликов on 30.11.2022.
//

// MARK: - Основные данные приложения
struct ProgrammName {
    let nameProgramm: String
    let kindOfProgramm: KindOfProgramm
    let desctiption: String
    let time: String
    let complexity: Complexity
}

enum Complexity: String {
    case any = "Любой"
    case low = "Начальный"
    case middle = "Средний"
    case high = "Продвинутый"
}

enum KindOfProgramm: String {
    case rehabilitation = "Пройти Реабилитацию"
    case dance = "Танцевать"
    case stamina = "Выносливость"
    case loseWeight = "Похудеть"
}

// MARK: - Данный для входа в программу
struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
// MARK: - Команда разработки программы
struct teamProg {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
