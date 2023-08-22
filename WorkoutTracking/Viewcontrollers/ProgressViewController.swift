//
//  ProgressViewController.swift
//  WorkoutTracking
//
//  Created by Vlad on 22.8.23..
//

import UIKit

class ProgressViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Workout Progress"
        
        addNavigationButton(at: .left, with: "Progress")
        addNavigationButton(at: .right, with: "Detail")
    }


}
