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
        static let secondary = UIColor(hexString: "#545C77")
        static let backGroundColor = UIColor(hexString: "#C9E0F0")
        
        static let backColorAllWorkout = UIColor(hexString: "#e1ebf7")
    }
    
    enum Strings{
        enum TabBar{
            static let overView = "Overview"
            static let session = "Session"
            static let progress = "Progress"
            static let settings = "Settings"
        }
        enum NabBar{
            static let titleNavBar = "Today"
        }
    }
    
    enum Images{
        enum Overview{
            static let imageButton = UIImage(systemName: "chevron.down")
        }
        enum TabBar{
            static let overView = UIImage(systemName: "house" )
            static let session = UIImage(systemName: "alarm" )
            static let progress = UIImage(systemName: "chart.bar.xaxis" )
            static let settings = UIImage(systemName: "gearshape" )
        }
        enum NavBar{
            static let addButton = UIImage(named: "custom.plus.circle.fill@4x")
        }
    }
    enum Fonts {
        static func helveticaRegular (with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    enum Overview{
        static let allWorkoutsButton = "All Workouts"
    }
}
