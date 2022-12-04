//
//  AboutUserViewController.swift
//  FitnessCenter
//
//  Created by Алишер Маликов on 02.12.2022.
//

import UIKit

class AboutUserViewController: UIViewController {

    @IBOutlet var segmentControl: UISegmentedControl!
    @IBOutlet var logoImageView: UIImageView!
    
    @IBOutlet var firstStackView: UIStackView!
    @IBOutlet var aboutUserLabels: [UILabel]!
    @IBOutlet var photoView: UIImageView!
    
    @IBOutlet var secondStackView: UIStackView!
    @IBOutlet var indexOfIMTLabel: UILabel!
    @IBOutlet var recomendationLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUIFirstSegment()
        logoImageView.image = UIImage(named: "welcome_logo")
    }

    @IBAction func segmentControlAction() {
        switch segmentControl.selectedSegmentIndex {
        case 0:
            updateUIFirstSegment()
        default:
            updateUISecondSegment()
        }
    }
    
}

extension AboutUserViewController {
    private func updateUIFirstSegment() {
        firstStackView.isHidden = false
        secondStackView.isHidden = true
        aboutUserLabels[0].text = "Имя: \(user.person.name)"
        aboutUserLabels[1].text = "Фамилия: \(user.person.surname)"
        aboutUserLabels[2].text = "Рост: \(user.person.height) см"
        aboutUserLabels[3].text = "Вес: \(user.person.weigth) кг"
        aboutUserLabels[4].text = "Возраст: \(user.person.age) лет"
        aboutUserLabels[5].text = "Достижения: \(user.person.achivments.joined(separator: ", "))"
        photoView.image = UIImage(named: "\(user.person.photo)")
    }
    
    private func updateUISecondSegment() {
        firstStackView.isHidden = true
        secondStackView.isHidden = false
        

        let imt = (Double(user.person.weigth) / pow(Double(user.person.height) / 100, 2))
        
        indexOfIMTLabel.text = String(round(imt))
        
        switch imt {
        case 0..<15:
            recomendationLabel.text = "У Вас: Критический дефицит массы тела"
        case 15..<16:
            recomendationLabel.text = "У Вас: Выраженный дефицит массы тела"
        case 16..<18.5:
            recomendationLabel.text = "У Вас: Дефицит массы тела"
        case 18.5..<25:
            recomendationLabel.text = "У Вас: Нормальный вес"
        case 25..<30:
            recomendationLabel.text = "У Вас: Избыточный вес"
        case 30..<35:
            recomendationLabel.text = "У Вас: Ожирение первой степени (умеренное)"
        case 35..<40:
            recomendationLabel.text = "У Вас: Ожирение второй степени (тяжелое ожирение)"
        default:
            recomendationLabel.text = "У Вас: Ожирение третьей степени (очень тяжелое ожирение)"
        }
    }
}

