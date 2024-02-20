//
//  ExploreController.swift
//  Birds
//
//  Created by Alexander Bokhulenkov on 19.02.2024.
//

import UIKit

final class ExploreController: UIViewController {
    
    //    MARK: - Properties
    
    //    MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    // MARK: - Helpers
    private func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Explore"
    }
}
