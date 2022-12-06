//
//  ViewController.swift
//  StretchingSchool
//
//  Created by Анастасия Булдакова on 22.11.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    private let user = User.getUserData()
    private let programmName = ProgrammName.getProgrammName()
    private let center = Contacts.getContacts()
    
    private let kindOfProgram = DataStore.shared.kindOfProgramm
    private let danceProgram = DataStore.shared.danceProgramm
    private let slimmingProgram = DataStore.shared.slimmingProgramm
    private let fightingArtsProgram = DataStore.shared.fightingArtsProgramm
    private let gymProgram = DataStore.shared.gymProgramm
    private let swimmingProgram = DataStore.shared.swimmingProgramm
    private let imageNames = DataStore.shared.imageNames
    private let scheduleList = Schedule.getScheduleList(date: Date())
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let contactVC = segue.destination as? ContactVC {
            contactVC.center = center
        }
        
        if let programmVC = segue.destination as? ProgrammVC {
            programmVC.kindOfProgram = kindOfProgram
            programmVC.danceProgram = danceProgram
            programmVC.slimmingProgram = slimmingProgram
            programmVC.fightingArtsProgram = fightingArtsProgram
            programmVC.gymProgram = gymProgram
            programmVC.swimmingProgram = swimmingProgram
        }
        
        
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let logInVC = $0 as? LogInViewController {
                logInVC.user = user
            } else if let trainingPlanVC = $0 as? TrainingPlanViewController {
                trainingPlanVC.trainingPlan = programmName
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print (programmName)
        
        programmName.
    }

}

