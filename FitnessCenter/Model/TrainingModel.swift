//
//  TrainingModel.swift
//  FitnessCenter
//
//  Created by Алишер Маликов on 06.12.2022.
//

struct TrainingPlan {
    let monday: [String]
    let wednesday: [String]
    let friday: [String]
    
    static func getTrainingPlan(for day: WeekDays) -> [String] {
        switch day {
        case .monday:
            return DataStoreTrainingPlan.shared.monday
        case .wednesday:
            return DataStoreTrainingPlan.shared.wednesday
        case .friday:
            return DataStoreTrainingPlan.shared.friday
        }
    }
}

enum WeekDays: String {
    case monday = "Понедельник"
    case wednesday = "Среда"
    case friday = "Пятница"
}
