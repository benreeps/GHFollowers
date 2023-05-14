//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Benjamin Reeps on 5/14/23.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
}
