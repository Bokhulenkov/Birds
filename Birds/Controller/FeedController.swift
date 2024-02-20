//
//  FeedControllerViewController.swift
//  Birds
//
//  Created by Alexander Bokhulenkov on 19.02.2024.
//

import UIKit

final class FeedController: UIViewController {

    //    MARK: - Properties
        
    //    MARK: - Lifecycle
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            configureUI()

        }
        
    // MARK: - Helpers

    private func configureUI() {
        view.backgroundColor = .white
        
        let imageView  = UIImageView(image: UIImage(named: "twitter_logo_blue"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }
}
