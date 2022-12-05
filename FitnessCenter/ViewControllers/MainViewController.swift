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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let contactVC = segue.destination as? ContactVC {
            contactVC.center = center
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

}

