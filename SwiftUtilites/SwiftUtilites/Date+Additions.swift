//
//  Date+Additions.swift
//  SwiftUtilites
//
//  Created by anuraj on 10/31/17.
//  Copyright © 2017 QBurst. All rights reserved.
//

import Foundation

extension Date {
    
    
    static func convertTodateFromDateString(date: String, format: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.timeZone = TimeZone(identifier: "IST")
        if let intermediateDate = dateFormatter.date(from: date) {
            return intermediateDate
        }
        return nil
    }
    
    static func returnDayWithDateFrom (date:Date, format:String = "dd MMM yyyy") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.timeZone = TimeZone(identifier: "IST")
        let dateString = dateFormatter.string(from: date)
        let dayComponent = Calendar.current.component(.weekday, from: date)
        let dayString = dateFormatter.shortWeekdaySymbols[dayComponent - 1]
        return dayString + " " + dateString
    }
    
}
