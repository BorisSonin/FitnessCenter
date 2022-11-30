//
//  DataModel.swift
//  FitnessCenter
//
//  Created by Алишер Маликов on 30.11.2022.
//

// MARK: - Основные данные приложения
struct ProgrammName {
    let nameProgramm: String
    let desctiption: String
    let time: String
    let kindOfProgramm: String
    let complexity: String
}

// MARK: - Расширения для структур/создание экземпляров
extension ProgrammName {
    static func getProgrammName() -> [ProgrammName] {
        var programmName: [ProgrammName] = []
        
        let nameProgramm = DataStore.shared.nameProgramm
        let desctiption = DataStore.shared.description
        let time = DataStore.shared.time
        let complexity = DataStore.shared.complexity
        let kindOfProgramm = DataStore.shared.kindOfProgramm
        
        
        let iterationCount = min(
            nameProgramm.count,
            desctiption.count,
            time.count,
            complexity.count,
            kindOfProgramm.count
        )
        
        for index in 0..<iterationCount {
            programmName.append(ProgrammName(nameProgramm: nameProgramm[index],
                                             desctiption: desctiption[index],
                                             time: time[index],
                                             kindOfProgramm:kindOfProgramm[index],
                                             complexity: complexity[index]
                                            ))
        }
        return programmName
        
    }
}
