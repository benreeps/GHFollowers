//
//  SearchVC.swift
//  GHFollowers
//
//  Created by Benjamin Reeps on 2/28/23.
//

import UIKit

class SearchVC: UIViewController {

    let logoImageView       = UIImageView()
    let usernameTextField   = GFTextField()
    let callToActionButton  = GFButton(backgroundColor: .systemGreen, title: "Get Followers")
    // generic button used incase name changes
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureLogoImageView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Use viewWillAppear bc viewDidLoad only gets called the first time the view loads. It would not get called if user were to go to followrs then back unless using viewWillAppear
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    
    func configureLogoImageView() {
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "gh-logo")!
        // "stringley typed" would be a typo in gh-logo that would casue crash
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
}
