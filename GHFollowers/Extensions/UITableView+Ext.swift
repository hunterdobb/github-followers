//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Hunter Dobbelmann on 2/16/20.
//  Copyright © 2020 hunterdobbapps. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
