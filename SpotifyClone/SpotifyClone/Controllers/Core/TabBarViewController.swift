//
//  TabBarViewController.swift
//  SpotifyClone
//
//  Created by Никита Кисляков on 06.02.2024.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        vcConfig()
    }
    
    func vcConfig() {
        let homeVC = HomeViewController()
        let searchVC = SearchViewController()
        let libraryVC = LibraryViewController()
        
        homeVC.title = "Browse"
        searchVC.title = "Search"
        libraryVC.title = "Library"
        
        homeVC.navigationItem.largeTitleDisplayMode = .always
        searchVC.navigationItem.largeTitleDisplayMode = .always
        libraryVC.navigationItem.largeTitleDisplayMode = .always
        
        let homeNavVC = UINavigationController(rootViewController: homeVC)
        let searchNavVC = UINavigationController(rootViewController: searchVC)
        let libraryNavVC = UINavigationController(rootViewController: libraryVC)
        
        homeNavVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag:  1)
        searchNavVC.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag:  2)
        libraryNavVC.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "music.note.list"), tag:  3)
        
        homeNavVC.navigationBar.prefersLargeTitles = true
        searchNavVC.navigationBar.prefersLargeTitles = true
        libraryNavVC.navigationBar.prefersLargeTitles = true
        
        setViewControllers([homeNavVC, searchNavVC, libraryNavVC], animated: false)
    }
    

}
