//
//  ProgrammVC.swift
//  StretchingSchool
//
//  Created by Анастасия Булдакова on 27.11.2022.
//

import UIKit

class ProgrammVC: UIViewController {

    let kindOfProgram = DataStore.shared.kindOfProgramm
    let danceProgram = DataStore.shared.danceProgramm
    let slimmingProgram = DataStore.shared.slimmingProgramm
    let fightingArtsProgram = DataStore.shared.fightingArtsProgramm
    let gymProgram = DataStore.shared.gymProgramm
    let swimmingProgram = DataStore.shared.swimmingProgramm
    
    
    @IBOutlet weak var levelPicker: UIPickerView!
    
    @IBOutlet weak var programImageView: UIImageView!
    
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

extension ProgrammVC: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        let bigestCountOfPrograms = [danceProgram.count,
                                     slimmingProgram.count,
                                     fightingArtsProgram.count,
                                     gymProgram.count,
                                     swimmingProgram.count
        ]
        
        let maxValue = bigestCountOfPrograms.max()
        
        if component == 0 {
            return kindOfProgram.count
        } else {
             return maxValue!
        }
    }
}

extension ProgrammVC: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return kindOfProgram[row]
        } else {
            if pickerView.selectedRow(inComponent: 0) == 0 {
                return danceProgram[row]
            } else if  pickerView.selectedRow(inComponent: 0) == 1 {
                return slimmingProgram[row]
            } else if pickerView.selectedRow(inComponent: 0) == 2 {
                return fightingArtsProgram[row]
            } else if pickerView.selectedRow(inComponent: 0) == 3  {
                return gymProgram[row]
            } else {
               return swimmingProgram[row]
            }
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            pickerView.reloadComponent(1)
            if pickerView.selectedRow(inComponent: 0) == 0 {
                setImage(name: danceProgram[pickerView.selectedRow(inComponent: 1)])
            } else if pickerView.selectedRow(inComponent: 0) == 1 {
                setImage(name: slimmingProgram[pickerView.selectedRow(inComponent: 1)])
            } else if pickerView.selectedRow(inComponent: 0) == 2 {
                setImage(name: fightingArtsProgram[pickerView.selectedRow(inComponent: 1)])
            } else if pickerView.selectedRow(inComponent: 0) == 3 {
                setImage(name: gymProgram[pickerView.selectedRow(inComponent: 1)])
            } else {
                setImage(name: swimmingProgram[pickerView.selectedRow(inComponent: 1)])
            }
        } else {
            if pickerView.selectedRow(inComponent: 0) == 0 {
                setImage(name: danceProgram[row])
            } else if pickerView.selectedRow(inComponent: 0) == 1 {
                setImage(name: slimmingProgram[row])
            } else if pickerView.selectedRow(inComponent: 0) == 2 {
                setImage(name: fightingArtsProgram[row])
            } else if pickerView.selectedRow(inComponent: 0) == 3 {
                setImage(name: gymProgram[row])
            } else {
                setImage(name: swimmingProgram[row])
            }
        }
    }
}
