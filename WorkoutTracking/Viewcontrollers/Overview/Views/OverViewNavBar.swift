//
//  OverViewNavBar.swift
//  WorkoutTracking
//
//  Created by Vlad on 25.8.23..
//

import UIKit

final class OverViewNavBar: BaseView {
    
    private let titleLabel = UILabel()
    private let allWorkOutsButton = SecondaryButton()
    private let addButtton = UIButton()
    private let weekDay = WeekView()
    
    func addAllWorkOutsAction(_ action: Selector, with target: Any?){
        allWorkOutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
    func addAction(_ action: Selector, with target: Any?){
        addButtton.addTarget(target, action: action, for: .touchUpInside)
    }
    
}
extension OverViewNavBar {
    override func addViews() {
        super.addViews()
        
        addView(titleLabel)
        addView(addButtton)
        addView(allWorkOutsButton)
        addView(weekDay)
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        addBorder(with: 2, color: Resourсes.Color.tabBarSeparator)
    }
    override func layoutView(){
        super.layoutView()
        NSLayoutConstraint.activate([
            addButtton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8 ),
            addButtton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -15),
            addButtton.heightAnchor.constraint(equalToConstant: 28),
            addButtton.widthAnchor.constraint(equalToConstant: 28),
            
            allWorkOutsButton.topAnchor.constraint(equalTo: addButtton.topAnchor),
            allWorkOutsButton.trailingAnchor.constraint(equalTo: addButtton.leadingAnchor,constant: -15),
            allWorkOutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkOutsButton.widthAnchor.constraint(equalToConstant: 130),
            
            titleLabel.centerYAnchor.constraint(equalTo: addButtton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkOutsButton.leadingAnchor ),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            weekDay.topAnchor.constraint(equalTo: addButtton.bottomAnchor, constant: 15),
            weekDay.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weekDay.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekDay.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weekDay.heightAnchor.constraint(equalToConstant: 47)
            
        ])
    }
    override func configureView() {
        super.configureView()
        backgroundColor = .white
        
        titleLabel.text = "Today"
        titleLabel.font = Resourсes.Fonts.helveticaRegular(with: 27)
        
        allWorkOutsButton.setTitle(Resourсes.Overview.allWorkoutsButton)

        addButtton.setImage(Resourсes.Images.NavBar.addButton, for: .normal)
    }
}

