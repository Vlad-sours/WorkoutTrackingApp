//
//  SessionViewController.swift
//  WorkoutTracking
//
//  Created by Vlad on 22.8.23..
//

import UIKit

class SessionViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Hight Intensity Cardio"
        
        addNavigationButton(at: .left, with: "Pause")
        addNavigationButton(at: .right, with: "Stop")
    }


}
