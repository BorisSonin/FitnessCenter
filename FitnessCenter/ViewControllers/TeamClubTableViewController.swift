//
//  TeamClubTableViewController.swift
//  FitnessCenter
//
//  Created by Борис Сонин on 30.11.2022.
//

import UIKit

class TeamClubTableViewController: UITableViewController {
    
    var teamCLubList = Team.getTeamList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        teamCLubList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeamList", for: indexPath)
        let team = teamCLubList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = team.fullName
        content.secondaryText = team.profession
        content.image = UIImage(named: team.fullName)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

