//
//  TabBarController.swift
//  WorkoutTracking
//
//  Created by Vlad on 20.8.23..
//

import UIKit

enum Tabs: Int {
    case overview
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
        
        let overViewContoller = OverViewController()
        let sessionViewContoller = SessionViewController()
        let progressViewContoller = ProgressViewController()
        let settingViewContoller = SettingsViewController()
        
        let overNavigationVc = NavigattionBarController(rootViewController: overViewContoller)
        let sessionNavigationVc = NavigattionBarController(rootViewController: sessionViewContoller)
        let progressNavigationVc = NavigattionBarController(rootViewController: progressViewContoller)
        let settingsNavigationVc = NavigattionBarController(rootViewController: settingViewContoller)
        
        overNavigationVc.tabBarItem = UITabBarItem(
            title: Resourсes.Strings.TabBar.overView,
            image: Resourсes.Images.TabBar.overView,
            tag: Tabs.overview.rawValue)
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
