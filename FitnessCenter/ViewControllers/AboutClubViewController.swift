//
//  AboutClubViewController.swift
//  FitnessCenter
//
//  Created by Борис Сонин on 30.11.2022.
//

import UIKit

class AboutClubViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var aboutClub: UITextView!
    
    private var myImage = [UIImage(named: "1"),
                           UIImage(named: "2"),
                           UIImage(named: "3")]
    
    override func viewDidLoad() {
        collectionView.dataSource = self
        collectionView.delegate = self
        super.viewDidLoad()
        
        aboutClub.text = information
    }
}

extension AboutClubViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellPhoto", for: indexPath) as! ImageCollectionViewCell
        cell.photoView.image = myImage[indexPath.row]
        return cell
    }
}
