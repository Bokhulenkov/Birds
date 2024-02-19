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
        feed.tabBarItem.image = UIImage(named: "home_unselected")
        
        let explore = ExploreController()
        explore.tabBarItem.image = UIImage(named: "search_unselected")
        
        let notification = NotificationController()
        notification.tabBarItem.image = UIImage(named: "like_unselected")
        
        let conversation = ConversationController()
        conversation.tabBarItem.image = UIImage(named: "ic_mail_outline_white_2x-1")
        
        viewControllers = [feed, explore, notification, conversation]
    }

}
