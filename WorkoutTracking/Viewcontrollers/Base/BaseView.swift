//
//  BaseView.swift
//  WorkoutTracking
//
//  Created by Vlad on 25.8.23..
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        addViews ()
        layoutView()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    } 
}
@objc extension BaseView {
    func addViews (){}
    func layoutView(){}
    func configure(){}
}
