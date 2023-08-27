 //
//  Date+Extention.swift
//  WorkoutTracking
//
//  Created by Vlad on 26.8.23..
//

import Foundation

extension Date {
    private var calendar: Calendar {
        return Calendar.current
    }
    var startDayOfWeek: Date {
        let componets = calendar.dateComponents([.yearForWeekOfYear,.weekOfYear], from: self)
        guard let firstDay = calendar.date(from: componets) else {return self}
        return calendar.date(byAdding: .day, value: 0, to: firstDay) ?? self
    }
    
    func ageForward(to days: Int) -> Date {
        return calendar.date(byAdding: .day , value: days, to: self ) ?? self
    }
    
    func cutTime() -> Date {
        
        let components = calendar.dateComponents([.year, .month, .day], from: self)
        return calendar.date(from: components) ?? self
        
       
        
    }
}
