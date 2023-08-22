//
//  BaseViewController.swift
//  WorkoutTracking
//
//  Created by Vlad on 22.8.23..
//

import UIKit

enum ButtonPosition {
    case left
    case right
}

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
}

@objc extension BaseViewController {
    
    func addViews(){}
    
    func layoutViews(){}
    
    func configure(){
        view.backgroundColor = Resourсes.Color.backGroundColor
    }
    func leftButtonHandler(){
        print("Left Button")
    }
    func rightButtonHandler(){
        print("Right Button")
    }
}
extension BaseViewController {
    func addNavigationButton(at position: ButtonPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resourсes.Color.activeTab, for: .normal)
        button.setTitleColor(Resourсes.Color.inActiveTab, for: .disabled)
        button.titleLabel?.font = Resourсes.Fonts.helveticaRegular(with: 17)
        
        switch position {
        case.left:
            button.addTarget(self, action: #selector(leftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case.right:
            button.addTarget(self, action: #selector(rightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
