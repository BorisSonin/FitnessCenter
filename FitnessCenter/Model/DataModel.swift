//
//  DataModel.swift
//  FitnessCenter
//
//  Created by Алишер Маликов on 30.11.2022.
//

// MARK: - Основные данные приложения
struct ProgrammName {
    let kindOfProgramm: String
    let danceProgram: String
    let slimmingProgram: String
    let fightingArtsProgram: String
    let gymProgram: String
    let swimmingProgram: String
    let workingTime: String
    
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
    static func getProgrammName() -> [ProgrammName] {
        var programmName: [ProgrammName] = []
        
        let kindOfProgramm = DataStore.shared.kindOfProgramm
        let danceProgram = DataStore.shared.danceProgramm
        let slimmingProgram = DataStore.shared.slimmingProgramm
        let fightingArtsProgram = DataStore.shared.fightingArtsProgramm
        let gymProgram = DataStore.shared.gymProgramm
        let swimmingProgram = DataStore.shared.swimmingProgramm
        let workingTime = DataStore.shared.workingTime
        
        let iterationCount = min(
            gymProgram.count,
            danceProgram.count,
            fightingArtsProgram.count,
            swimmingProgram.count,
            kindOfProgramm.count,
            workingTime.count
        )
        
        for index in 0..<iterationCount {
            programmName.append(ProgrammName(kindOfProgramm: kindOfProgramm[index],
                                             danceProgram: danceProgram[index],
                                             slimmingProgram: swimmingProgram[index],
                                             fightingArtsProgram: fightingArtsProgram[index],
                                             gymProgram: gymProgram[index],
                                             swimmingProgram: slimmingProgram[index],
                                             workingTime: workingTime[index]
                                            ))
        }
        return programmName
    }
}
extension Schedule {
    static func getScheduleList() -> [Schedule] {
        let kindOfProgramm = DataStore.shared.kindOfProgramm
        let workingTime = DataStore.shared.workingTime
        let weekdays = "Пн"
//        [
//        "Пн",
//        "Вт",
//        "Ср",
//        "Чт",
//        "Пт",
//        "Сб",
//        "Вс"
//        ]
        switch weekdays {
        case "Пн": [
            Schedule(time: workingTime[0], name: kindOfProgramm[4]),
            Schedule(time: workingTime[0], name: kindOfProgramm[3]),
            Schedule(time: workingTime[1], name: kindOfProgramm[2]),
            Schedule(time: workingTime[2], name: kindOfProgramm[1]),
            Schedule(time: workingTime[3], name: kindOfProgramm[0])
        ]
        case "Вт": [
            Schedule(time: workingTime[0], name: kindOfProgramm[4]),
            Schedule(time: workingTime[0], name: kindOfProgramm[3]),
            Schedule(time: workingTime[1], name: kindOfProgramm[2]),
        ]
        case "Ср":[
            Schedule(time: workingTime[0], name: kindOfProgramm[4]),
            Schedule(time: workingTime[0], name: kindOfProgramm[3]),
            Schedule(time: workingTime[1], name: kindOfProgramm[2]),
            Schedule(time: workingTime[2], name: kindOfProgramm[1]),
            Schedule(time: workingTime[3], name: kindOfProgramm[0])
            ]
        case "Чт": [
            Schedule(time: workingTime[0], name: kindOfProgramm[4]),
            Schedule(time: workingTime[0], name: kindOfProgramm[3]),
            Schedule(time: workingTime[1], name: kindOfProgramm[2]),
            Schedule(time: workingTime[2], name: kindOfProgramm[1]),
            Schedule(time: workingTime[3], name: kindOfProgramm[0])
        ]
        case "Пт": [
            Schedule(time: workingTime[2], name: kindOfProgramm[1]),
            Schedule(time: workingTime[3], name: kindOfProgramm[0])
        ]
        case "Сб": [
            Schedule(time: workingTime[0], name: kindOfProgramm[3]),
            Schedule(time: workingTime[1], name: kindOfProgramm[2]),
            Schedule(time: workingTime[2], name: kindOfProgramm[1])
        ]
        case "Вс": [
            Schedule(time: workingTime[1], name: kindOfProgramm[2]),
        ]
        default:
            Schedule(time: "Выходной.", name: "Санитарный день")
        }
        return
    }
}
