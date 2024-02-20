//
//  MainTabBarController.swift
//  Birds
//
//  Created by Alexander Bokhulenkov on 19.02.2024.
//

import UIKit

class MainTabBarController: UITabBarController {

//    MARK: - Properties
    
//    MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewControllers()
    }
    
// MARK: - Helpers
    
    func configureViewControllers() {
        let feed = FeedController()
        let nav1 = templateNavigationController(image: "home_unselected", rootViewController: feed)
        
        let explore = ExploreController()
        let nav2 = templateNavigationController(image: "search_unselected", rootViewController: explore)
        
        let notification = NotificationController()
        let nav3 = templateNavigationController(image: "like_unselected", rootViewController: notification)
        
        let conversation = ConversationController()
        let nav4 = templateNavigationController(image: "ic_mail_outline_white_2x-1", rootViewController: conversation)
        
        viewControllers = [nav1, nav2, nav3, nav4]
    }

    func templateNavigationController(image: String, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = UIImage(named: image)
//        почему то не меняет цвет?????
        nav.navigationBar.barTintColor = .gray
        return nav
    }
}
