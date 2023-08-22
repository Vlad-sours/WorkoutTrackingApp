//
//  TabBarController.swift
//  WorkoutTracking
//
//  Created by Vlad on 20.8.23..
//

import UIKit

enum Tabs: Int {
    case overView
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure(){
        tabBar.tintColor = Resourсes.Color.activeTab
        tabBar.barTintColor = Resourсes.Color.inActiveTab
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resourсes.Color.tabBarSeparator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overViewContoller = UIViewController()
        let sessionViewContoller = UIViewController()
        let progressViewContoller = UIViewController()
        let settingViewContoller = UIViewController()
        
        let overNavigationVc = UINavigationController(rootViewController: overViewContoller)
        let sessionNavigationVc = UINavigationController(rootViewController: sessionViewContoller)
        let progressNavigationVc = UINavigationController(rootViewController: progressViewContoller)
        let settingsNavigationVc = UINavigationController(rootViewController: settingViewContoller)
        
        overNavigationVc.tabBarItem = UITabBarItem(
            title: Resourсes.Strings.TabBar.overView,
            image: Resourсes.Images.TabBar.overView,
            tag: Tabs.overView.rawValue)
        sessionNavigationVc.tabBarItem = UITabBarItem(
            title: Resourсes.Strings.TabBar.session,
            image: Resourсes.Images.TabBar.session,
            tag: Tabs.session.rawValue)
        progressNavigationVc.tabBarItem = UITabBarItem(
            title: Resourсes.Strings.TabBar.progress,
            image: Resourсes.Images.TabBar.progress,
            tag: Tabs.progress.rawValue)
        settingsNavigationVc.tabBarItem = UITabBarItem(
            title: Resourсes.Strings.TabBar.settings,
            image: Resourсes.Images.TabBar.settings,
            tag: Tabs.settings.rawValue)
        
        setViewControllers(
            [overNavigationVc,
             sessionNavigationVc,
             progressNavigationVc,
             settingsNavigationVc
            ],
            animated: false)
    }
}
