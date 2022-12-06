//
//  TrainingPlanViewController.swift
//  FitnessCenter
//
//  Created by Алишер Маликов on 02.12.2022.
//

import UIKit

class TrainingPlanViewController: UIViewController {

    @IBOutlet var logoImage: UIImageView!
    @IBOutlet var segmentControl: UISegmentedControl!
    @IBOutlet var trainingTableView: UITableView!
    
    var trainingPlanMonday: [String]!
    var trainingPlanWednesday: [String]!
    var trainingPlanFriday: [String]!
    var training: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoImage.image = UIImage(named: "welcome_logo")
        training = trainingPlanMonday

    }
    
    @IBAction func segmentControlAction(_ sender: UISegmentedControl) {

        switch segmentControl.selectedSegmentIndex {
        case 0:
            training = trainingPlanMonday
        case 1:
            training = trainingPlanWednesday
        default:
            training = trainingPlanFriday
        }
        trainingTableView.reloadData()
    }
}

extension TrainingPlanViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        trainingPlanMonday.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrainingPlanCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let trainingPlan = training[indexPath.row]
        
        content.text = trainingPlan
        cell.contentConfiguration = content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
