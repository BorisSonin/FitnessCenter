//
//  DataStore.swift
//  FitnessCenter
//
//  Created by Алишер Маликов on 30.11.2022.
//

class DataStore {
    static let shared = DataStore()
    
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
    
    private init() {}
}
