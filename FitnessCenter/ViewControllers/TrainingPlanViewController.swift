//
//  TrainingPlanViewController.swift
//  FitnessCenter
//
//  Created by Алишер Маликов on 02.12.2022.
//

import UIKit

class TrainingPlanViewController: UIViewController {

    @IBOutlet var logoImage: UIImageView!
    @IBOutlet var programmNameLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    var trainingPlan: [ProgrammName]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoImage.image = UIImage(named: "welcome_logo")
//        programmNameLabel.text = trainingPlan[0].nameProgramm
//        descriptionLabel.text = trainingPlan[0].desctiption
    }
}
