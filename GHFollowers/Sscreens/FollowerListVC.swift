//
//  FollowerListVCViewController.swift
//  GHFollowers
//
//  Created by Benjamin Reeps on 3/3/23.
//

import UIKit

class FollowerListVC: UIViewController {

    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true 
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear (animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
