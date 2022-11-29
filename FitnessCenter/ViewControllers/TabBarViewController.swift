//
//  TabBarViewController.swift
//  StretchingSchool
//
//  Created by Анастасия Булдакова on 27.11.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tabBarAppearance = UITabBarAppearance() //UITabBarAppearance класс отвечающий за внешний вид TB, создали его экземпляр
        tabBarAppearance.configureWithOpaqueBackground()
        
        tabBar.standardAppearance = tabBarAppearance // standardAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance // scrollEdgeAppearance - внешний вид ТБ при скроллинге экрана
    }
    

}
