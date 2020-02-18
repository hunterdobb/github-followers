//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Hunter Dobbelmann on 2/2/20.
//  Copyright © 2020 hunterdobbapps. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
