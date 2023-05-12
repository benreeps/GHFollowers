//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Benjamin Reeps on 3/5/23.
//

import UIKit
import SafariServices
// Also imports foundation
extension UIViewController {
    
    
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC                        = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
                alertVC.modalPresentationStyle = .overFullScreen
                alertVC.modalTransitionStyle   = .crossDissolve
                self.present(alertVC, animated: true)
        }
    }
    
    
    func presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredBarTintColor = .systemGreen
        present(safariVC, animated: true)
    }
}
