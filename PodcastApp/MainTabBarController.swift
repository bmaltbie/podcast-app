//
//  MainTabBarController.swift
//  PodcastApp
//
//  Created by Benjamin Maltbie on 5/7/19.
//  Copyright © 2019 Benjamin Maltbie. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = .purple
        UINavigationBar.appearance().prefersLargeTitles = true
        
        viewControllers = [
            generateNavigationController(with: PodcastsSearchController(), title: "Search", image: #imageLiteral(resourceName: "search")),
            generateNavigationController(with: ViewController(), title: "Favorites", image: #imageLiteral(resourceName: "favorites")),
            generateNavigationController(with: ViewController(), title: "Downloads", image: #imageLiteral(resourceName: "downloads"))
        ]
    } // viewDidLoad
} // MainTabBarController


// MARK:- Helper Functions
fileprivate func generateNavigationController(with rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
    let navController = UINavigationController(rootViewController: rootViewController)
    rootViewController.navigationItem.title = title
    navController.tabBarItem.title = title
    navController.tabBarItem.image = image
    
    return navController
} // generateNavigationController
