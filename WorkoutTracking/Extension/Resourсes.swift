//
//  Resourses.swift
//  WorkoutTracking
//
//  Created by Vlad on 21.8.23..
//

import UIKit

enum Resourсes {
    enum Color{
        static let activeTab = UIColor(hexString: "#3f85a1")
        static let inActiveTab = UIColor(hexString: "#8f9394")
        
        static let tabBarSeparator = UIColor(hexString: "#E8ECEF")
    }
    
    enum Strings{
        enum TabBar{
            static let overView = "Overview"
            static let session = "Session"
            static let progress = "Progress"
            static let settings = "Settings"
        }
    }
    
    enum Images{
        enum TabBar{
            static let overView = UIImage(systemName: "house" )
            static let session = UIImage(systemName: "alarm" )
            static let progress = UIImage(systemName: "chart.bar.xaxis" )
            static let settings = UIImage(systemName: "gearshape" )
        }
    }
}
