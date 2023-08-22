//
//  SecondaryButton.swift
//  WorkoutTracking
//
//  Created by Vlad on 22.8.23..
//

import UIKit

final class SecondaryButton: UIButton {
    
    private let label = UILabel()
    private let icon = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setTitle(_ title: String ){
        label.text = title
    }
}

private extension SecondaryButton{
    func addViews(){
        addSubview(label)
        addSubview(icon)
    }
    
    func layoutViews(){
        NSLayoutConstraint.activate([
            icon.centerYAnchor.constraint(equalTo: centerYAnchor),
            icon.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            icon.heightAnchor.constraint(equalToConstant: 5),
            icon.widthAnchor.constraint(equalToConstant: 10),
            
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: icon.leadingAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
    
    func configure(){
        backgroundColor = Resourсes.Color.secondary
        layer.cornerRadius = 15
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = Resourсes.Color.activeTab
        label.textAlignment = .center
        label.font = Resourсes.Fonts.helveticaRegular(with: 15)
        
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.image = Resourсes.Images.Overview.imageButton?
            .withRenderingMode(.alwaysTemplate)
        icon.tintColor = Resourсes.Color.activeTab
        
    }
}
