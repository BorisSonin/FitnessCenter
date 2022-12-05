//
//  ScheduleVC.swift
//  StretchingSchool
//
//  Created by Анастасия Булдакова on 27.11.2022.
//

import UIKit

class ScheduleVC: UIViewController {
    
    
    let kindOfProgramm = DataStore.shared.kindOfProgramm
    let imageNames = DataStore.shared.imageNames
    var images = [UIImage]()
    var scheduleList = Schedule.getScheduleList()
    
    @IBOutlet weak var changingView: UIImageView!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var scheduleTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 0..<imageNames.count {
            images.append(UIImage(named: imageNames[i]) ?? UIImage())
        }
        changingView.animationImages = images
        changingView.animationDuration = 60.0
        changingView.startAnimating()
        
        datePicker.addTarget(self, action: #selector(dateSelected), for: .valueChanged)
    }
    @IBAction func datePickerChangedVaue(_ sender: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        var weekday: String = ""
        dateFormatter.dateFormat = "ccc"
        weekday = dateFormatter.string(from: self.datePicker.date)
        
        scheduleTableView.reloadData()
            
        
        print(weekday)
    }
    
    @objc
    func dateSelected() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
    }


}

extension ScheduleVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       kindOfProgramm.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "schedule", for: indexPath)
        let schedule = scheduleList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = schedule.title
        cell.contentConfiguration = content
        return cell
    }
}
