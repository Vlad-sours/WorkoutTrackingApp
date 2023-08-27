//
//  WeekDayView.swift
//  WorkoutTracking
//
//  Created by Vlad on 26.8.23..
//

import UIKit

extension WeekView{
    final class WeekDayView: BaseView {
        
        private let nameLabel = UILabel()
        private let dateLabel = UILabel()
        private let stackView = UIStackView()
        
        func config(with index: Int, and name: String) {
            
            let startDayWeek = Date().startDayOfWeek
            let currentDay = startDayWeek.ageForward(to: index)
            let day = Calendar.current.component(.day, from: currentDay)
            
            let isToday = currentDay.cutTime() == Date().cutTime()
            print(day)
             
            backgroundColor = isToday ? Resourсes.Color.activeTab : Resourсes.Color.backGroundColor
            nameLabel.text = name.uppercased()
            nameLabel.textColor = isToday ? .white : Resourсes.Color.inActiveTab
            dateLabel.text = "\(day)"
            dateLabel.textColor = isToday ? .white : Resourсes.Color.inActiveTab
        }
    }
}

extension WeekView.WeekDayView {
    
    override func addViews() {
        super.addViews()
        
        addView(stackView)
        
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
    
    }
    override func layoutView() {
        super.layoutView()
        
        NSLayoutConstraint.activate([
              stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
              stackView.centerYAnchor.constraint(equalTo: centerYAnchor),

        ])
    }
    
    override func configureView() {
        super.configureView()
        
        backgroundColor = .green
        layer.cornerRadius = 12
        layer.masksToBounds = true
        
        nameLabel.font = Resourсes.Fonts.helveticaRegular(with: 16 )
        nameLabel.textAlignment = .center
        
        dateLabel.font = Resourсes.Fonts.helveticaRegular(with: 16 )
        dateLabel.textAlignment = .center
        
        stackView.spacing = 3
        stackView.axis = .vertical
    }
}
