//
//  OverViewController.swift
//  WorkoutTracking
//
//  Created by Vlad on 20.8.23..
//

import UIKit

class OverViewController: BaseViewController {
    
    private let allWorkOutsButton = SecondaryButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}
extension OverViewController {
    
    override func addViews() {
        super.addViews()
        view.addSubview(allWorkOutsButton)
    }
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            allWorkOutsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            allWorkOutsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            allWorkOutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkOutsButton.widthAnchor.constraint(equalToConstant: 130)
        ])
    }
    
    override func configure() {
        super.configure()
        allWorkOutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWorkOutsButton.setTitle(Resourсes.Overview.allWorkoutsButton)
    }
}
