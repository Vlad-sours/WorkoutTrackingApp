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
    func makeSystemEffect(_ button: UIButton) {
        button.addTarget(self, action: #selector(handleIn), for: [
            .touchDown,
            .touchDragInside])
        button.addTarget(self, action: #selector(handleOut), for: [
            .touchDragOutside,
            .touchUpInside,
            .touchUpOutside,
            .touchDragExit,
            .touchCancel])
    }
    @objc func handleIn(){
        UIView.animate(withDuration: 0.15) {
            self.alpha = 0.55
        }
    }
    @objc func handleOut(){
        UIView.animate(withDuration: 0.15) {
            self.alpha = 1
        }
    }
}
