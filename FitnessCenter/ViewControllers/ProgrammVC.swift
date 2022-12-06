//
//  ProgrammVC.swift
//  StretchingSchool
//
//  Created by Анастасия Булдакова on 27.11.2022.
//

import UIKit

class ProgrammVC: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var levelPicker: UIPickerView!
    @IBOutlet weak var programImageView: UIImageView!
    
    var programmName: ProgrammName!
    
    // MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        levelPicker.dataSource = self
        levelPicker.delegate = self
        setImage(name: "Танго")

    }
    
    func setImage(name: String) {
        guard let newImage = UIImage(named: name) else { return }
        programImageView.image = newImage
    }
}

    // MARK: - Протоколы
extension ProgrammVC: UIPickerViewDataSource {

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        let bigestCountOfPrograms = [programmName.danceProgramm.count,
                                     programmName.slimmingProgramm.count,
                                     programmName.fightingArtsProgramm.count,
                                     programmName.gymProgramm.count,
                                     programmName.swimmingProgramm.count
        ]
        
        let maxValue = bigestCountOfPrograms.max()
        
        if component == 0 {
            return programmName.kindOfProgramm.count
        } else {
             return maxValue!
        }
    }
}

extension ProgrammVC: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return programmName.kindOfProgramm[row]
        } else {
            if pickerView.selectedRow(inComponent: 0) == 0 {
                return programmName.danceProgramm[row]
            } else if  pickerView.selectedRow(inComponent: 0) == 1 {
                return programmName.slimmingProgramm[row]
            } else if pickerView.selectedRow(inComponent: 0) == 2 {
                return programmName.fightingArtsProgramm[row]
            } else if pickerView.selectedRow(inComponent: 0) == 3  {
                return programmName.gymProgramm[row]
            } else {
                return programmName.swimmingProgramm[row]
            }
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            pickerView.reloadComponent(1)
            if pickerView.selectedRow(inComponent: 0) == 0 {
                setImage(name: programmName.danceProgramm[pickerView.selectedRow(inComponent: 1)])
            } else if pickerView.selectedRow(inComponent: 0) == 1 {
                setImage(name: programmName.slimmingProgramm[pickerView.selectedRow(inComponent: 1)])
            } else if pickerView.selectedRow(inComponent: 0) == 2 {
                setImage(name: programmName.fightingArtsProgramm[pickerView.selectedRow(inComponent: 1)])
            } else if pickerView.selectedRow(inComponent: 0) == 3 {
                setImage(name: programmName.gymProgramm[pickerView.selectedRow(inComponent: 1)])
            } else {
                setImage(name: programmName.swimmingProgramm[pickerView.selectedRow(inComponent: 1)])
            }
        } else {
            if pickerView.selectedRow(inComponent: 0) == 0 {
                setImage(name: programmName.danceProgramm[row])
            } else if pickerView.selectedRow(inComponent: 0) == 1 {
                setImage(name: programmName.slimmingProgramm[row])
            } else if pickerView.selectedRow(inComponent: 0) == 2 {
                setImage(name: programmName.fightingArtsProgramm[row])
            } else if pickerView.selectedRow(inComponent: 0) == 3 {
                setImage(name: programmName.gymProgramm[row])
            } else {
                setImage(name: programmName.swimmingProgramm[row])
            }
        }
    }
}
