//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Benjamin Reeps on 5/13/23.
//

import UIKit

extension UIView {

    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
