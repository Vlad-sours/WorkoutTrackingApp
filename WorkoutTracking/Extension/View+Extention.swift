//
//  View+Extention.swift
//  WorkoutTracking
//
//  Created by Vlad on 22.8.23..
//

import UIKit

extension UIView {
    func addBorder(with height: CGFloat, color: UIColor) {
        let borderNavigattion = UIView()
        borderNavigattion.backgroundColor = color
        borderNavigattion.autoresizingMask = [ .flexibleWidth, .flexibleHeight ]
        borderNavigattion.frame = CGRect(
            x: 0,
            y: frame.height - height,
            width: frame.width,
            height: height)
        addSubview(borderNavigattion)
    }
}
