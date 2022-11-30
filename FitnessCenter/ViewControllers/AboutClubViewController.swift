//
//  AboutClubViewController.swift
//  FitnessCenter
//
//  Created by Борис Сонин on 30.11.2022.
//

import UIKit

class AboutClubViewController: UIViewController {

   
    @IBOutlet var imageClub: UIImageView!
    @IBOutlet var aboutClub: UITextView!
    
    private var myImage:UIImage? = UIImage(named: "clubPhoto")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutClub.text = information
        imageClub.image = myImage
    }


}
