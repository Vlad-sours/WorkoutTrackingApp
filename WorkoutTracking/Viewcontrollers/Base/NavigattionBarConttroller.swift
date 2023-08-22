//
//  NavigattionBarConttroller.swift
//  WorkoutTracking
//
//  Created by Vlad on 22.8.23..
//

import UIKit

final class NavigattionBarController: UINavigationController {
    override func viewDidLoad() {
        configure()
    }
    
    private func configure(){
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resourсes.Color.inActiveTab,
            .font: Resourсes.Fonts.helveticaRegular(with: 17)
            
                ]
        navigationBar.addBorder(with: 1, color: Resourсes.Color.tabBarSeparator)
        
    }
}
