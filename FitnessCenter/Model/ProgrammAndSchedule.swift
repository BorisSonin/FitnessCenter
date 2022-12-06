//
//  ProgrammAndSchedule.swift
//  FitnessCenter
//
//  Created by Алишер Маликов on 30.11.2022.
//

import Foundation
// MARK: - Основные данные приложения
struct ProgrammName {
    let kindOfProgramm: [String]
    let danceProgramm: [String]
    let slimmingProgramm: [String]
    let fightingArtsProgramm: [String]
    let gymProgramm: [String]
    let swimmingProgramm: [String]
    let imageNames: [String]
    let workingTime: [String]
}

struct Schedule {
    let time: String
    let name: String
    
    var title: String {
        "\(time) - \(name)"
    }
}

// MARK: - Расширения для структур/создание экземпляров

extension ProgrammName {
    static func getNameProgrammName() -> ProgrammName {
        ProgrammName(kindOfProgramm: DataStoreForProgrammAndSchedule.shared.kindOfProgramm,
                     danceProgramm: DataStoreForProgrammAndSchedule.shared.danceProgramm,
                     slimmingProgramm: DataStoreForProgrammAndSchedule.shared.slimmingProgramm,
                     fightingArtsProgramm: DataStoreForProgrammAndSchedule.shared.fightingArtsProgramm,
                     gymProgramm: DataStoreForProgrammAndSchedule.shared.gymProgramm,
                     swimmingProgramm: DataStoreForProgrammAndSchedule.shared.swimmingProgramm,
                     imageNames: DataStoreForProgrammAndSchedule.shared.imageNames,
                     workingTime: DataStoreForProgrammAndSchedule.shared.workingTime)
    }
}

extension Schedule {
    static func getScheduleList(date: Date) -> [Schedule] {
        let kindOfProgramm = DataStoreForProgrammAndSchedule.shared.kindOfProgramm
        let workingTime = DataStoreForProgrammAndSchedule.shared.workingTime
        
        let dateFormatter = DateFormatter()
        var weekday: String = ""
        dateFormatter.dateFormat = "ccc"
        weekday = dateFormatter.string(from: date)
        print(weekday)
        switch weekday {
        case "Пн": return [
            Schedule(time: workingTime[0], name: kindOfProgramm[4]),
            Schedule(time: workingTime[0], name: kindOfProgramm[3]),
            Schedule(time: workingTime[1], name: kindOfProgramm[2]),
            Schedule(time: workingTime[2], name: kindOfProgramm[1]),
            Schedule(time: workingTime[3], name: kindOfProgramm[0])
        ]
        case "Вт": return [
            Schedule(time: workingTime[0], name: kindOfProgramm[4]),
            Schedule(time: workingTime[0], name: kindOfProgramm[3]),
            Schedule(time: workingTime[1], name: kindOfProgramm[2]),
        ]
        case "Ср": return [
            Schedule(time: workingTime[0], name: kindOfProgramm[4]),
            Schedule(time: workingTime[0], name: kindOfProgramm[3]),
            Schedule(time: workingTime[1], name: kindOfProgramm[2]),
            Schedule(time: workingTime[2], name: kindOfProgramm[1]),
            Schedule(time: workingTime[3], name: kindOfProgramm[0])
            ]
        case "Чт": return [
            Schedule(time: workingTime[0], name: kindOfProgramm[4]),
            Schedule(time: workingTime[0], name: kindOfProgramm[3]),
            Schedule(time: workingTime[1], name: kindOfProgramm[2]),
            Schedule(time: workingTime[2], name: kindOfProgramm[1]),
            Schedule(time: workingTime[3], name: kindOfProgramm[0])
        ]
        case "Пт": return [
            Schedule(time: workingTime[2], name: kindOfProgramm[1]),
            Schedule(time: workingTime[3], name: kindOfProgramm[0])
        ]
        case "Сб": return [
            Schedule(time: workingTime[0], name: kindOfProgramm[3]),
            Schedule(time: workingTime[1], name: kindOfProgramm[2]),
            Schedule(time: workingTime[2], name: kindOfProgramm[1])
        ]
        case "Вс": return [
            Schedule(time: workingTime[1], name: kindOfProgramm[2]),
        ]
        default:
           return [Schedule(time: "Выходной.", name: "Санитарный день")]
        }
    }
}
