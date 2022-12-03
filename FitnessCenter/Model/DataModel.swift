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
        
        let iterationCount = min(
            gymProgram.count,
            danceProgram.count,
            fightingArtsProgram.count,
            swimmingProgram.count,
            kindOfProgramm.count
        )
        
        for index in 0..<iterationCount {
            programmName.append(ProgrammName(kindOfProgramm: kindOfProgramm[index],
                                             danceProgram: danceProgram[index],
                                             slimmingProgram: swimmingProgram[index],
                                             fightingArtsProgram: fightingArtsProgram[index],
                                             gymProgram: gymProgram[index],
                                             swimmingProgram: slimmingProgram[index]
                                            ))
        }
        return programmName
        
    }
}
