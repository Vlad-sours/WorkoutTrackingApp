//
//  OverViewController.swift
//  WorkoutTracking
//
//  Created by Vlad on 20.8.23..
//

import UIKit

class OverViewController: BaseViewController {
    
    private let navBar = OverViewNavBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
extension OverViewController {
    
    override func addViews() {
        super.addViews()
        view.addSubview(navBar)
 
    }
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
           
            

        ])
    }
    
    override func configure() {
        super.configure()
         
        navigationController?.navigationBar.isHidden = true  
        navBar.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
}


