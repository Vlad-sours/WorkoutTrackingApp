//
//  WeekView.swift
//  WorkoutTracking
//
//  Created by Vlad on 26.8.23..
//

import UIKit

final class WeekView: BaseView {
    
    private let calendar = Calendar.current
    private let stackView =  UIStackView()
    
}


extension WeekView {
    
    override func addViews() {
        super.addViews()
        addView(stackView)
    }
    override func layoutView() {
        super.layoutView()
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureView() {
        super.configureView()
        stackView.spacing = 7
        stackView.distribution = .fillEqually
        
        let weekDays = calendar.shortStandaloneWeekdaySymbols
        
        weekDays.enumerated().forEach { index, name in
            let view = WeekDayView()
            view.config(with: index, and: name)
            
            stackView.addArrangedSubview(view)
        }
    }
}
