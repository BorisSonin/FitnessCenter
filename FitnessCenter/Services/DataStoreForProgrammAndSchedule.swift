//
//  DataStoreForProgrammAndSchedule.swift
//  FitnessCenter
//
//  Created by Алишер Маликов on 30.11.2022.
//

class DataStoreForProgrammAndSchedule {
    static let shared = DataStoreForProgrammAndSchedule()
    
    let kindOfProgramm = [
        "Танцы",
        "Похудение",
        "Единоборства",
        "Силовые",
        "Бассейн",
    ]
    
    let danceProgramm = [
        "Танго",
        "Вальс",
        "Сальса",
    ]
    
    let slimmingProgramm = [
        "Йога",
        "Бег",
        "CrossFit",
    ]
    let fightingArtsProgramm = [
        "Бокс",
        "Карате",
        "Тхэквандо",
    ]
    let gymProgramm = [
        "Фитнесс",
        "Паурлифтинг",
        "Бодибилдинг",
    ]
    let swimmingProgramm = [
        "Плаванье",
        "Водное поло",
        "Фридайвинг",
    ]
    let imageNames = [
        "Танго",
        "Вальс",
        "Сальса",
        "Йога",
        "Бег",
        "CrossFit",
        "Бокс",
        "Карате",
        "Тхэквандо",
        "Фитнесс",
        "Паурлифтинг",
        "Бодибилдинг",
        "Плаванье",
        "Водное поло",
        "Фридайвинг",
    ]
    let workingTime = [
    "09:00 - 21:00",
    "17:00 - 21:00",
    "19:00 - 21:00",
    "20:00 - 21:00"
    ]
    private init() {}
}
