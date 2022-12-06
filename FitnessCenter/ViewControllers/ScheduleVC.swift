//
//  ScheduleVC.swift
//  StretchingSchool
//
//  Created by Анастасия Булдакова on 27.11.2022.
//

import UIKit

class ScheduleVC: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var changingView: UIImageView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var scheduleTableView: UITableView!
    
    var programmName: ProgrammName!
    var images = [UIImage]()
    var scheduleList: [Schedule]!
    
    // MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 0..<programmName.imageNames.count {
            images.append(UIImage(named: programmName.imageNames[i]) ?? UIImage())
        }
        changingView.animationImages = images
        changingView.animationDuration = 60.0
        changingView.startAnimating()
        
        datePicker.addTarget(self, action: #selector(dateSelected), for: .valueChanged)
    }
    
    // MARK: - IBActions
    @IBAction func datePickerChangedVaue(_ sender: UIDatePicker) {
        scheduleList = Schedule.getScheduleList(date: sender.date)
        scheduleTableView.reloadData()
    }
    
    @objc func dateSelected() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
    }
}

    // MARK: - Протоколы
extension ScheduleVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        scheduleList.count
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
