//
//  ViewController.swift
//  StretchingSchool
//
//  Created by Анастасия Булдакова on 22.11.2022.
//

import UIKit

class MainViewController: UIViewController {
    // MARK: - Private variables
    // данные для Экрана входа - LogInViewController
    private let user = User.getUserData()
    // данные для окна Контактов - ContactVC
    private let center = Contacts.getContacts()
    // данные для окна Программы - ProgrammVC
    private let programmName = ProgrammName.getNameProgrammName()
    // данные для окна Расписание - ScheduleVC
    private let scheduleList = Schedule.getScheduleList(date: Date())
    // данные для окна Плана Тренировок - TrainingPlanViewController
    private let trainingPlanMonday = TrainingPlan.getTrainingPlan(for: .monday)
    private let trainingPlanWednesday = TrainingPlan.getTrainingPlan(for: .wednesday)
    private let trainingPlanFriday = TrainingPlan.getTrainingPlan(for: .friday)
    
    // MARK: Override Methods
    // передача данных на необходимые экраны
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let contactVC = segue.destination as? ContactVC {
            contactVC.center = center
        }
        
        if let programmVC = segue.destination as? ProgrammVC {
            programmVC.programmName = programmName
        }
        
        if let scheduleVC = segue.destination as? ScheduleVC {
            scheduleVC.scheduleList = scheduleList
            scheduleVC.programmName = programmName
        }
        
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        viewControllers.forEach {
            if let logInVC = $0 as? LogInViewController {
                logInVC.user = user
            } else if let trainingPlanVC = $0 as? TrainingPlanViewController {
                trainingPlanVC.trainingPlanMonday = trainingPlanMonday
                trainingPlanVC.trainingPlanWednesday = trainingPlanWednesday
                trainingPlanVC.trainingPlanFriday = trainingPlanFriday
            }
        }
    }
}

