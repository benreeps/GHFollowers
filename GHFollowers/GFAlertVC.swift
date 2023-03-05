//
//  GFAlertVCViewController.swift
//  GHFollowers
//
//  Created by Benjamin Reeps on 3/5/23.
//

import UIKit

class GFAlertVC: UIViewController {

    let containerView = UIView()
    let titleLabel = GFTittleLabel(textAlignment: .center, fontSize: 20)
    let messageLabel = GFBodyLabel(textAlignment: .center)
    let actionButton = GFButton(backgroundColor: .systemPink, title: "Ok")
    
    var alertTitle: String?
    var message: String?
    var buttonTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}
