//
//  GFTextField.swift
//  GHFollowers
//
//  Created by Benjamin Reeps on 3/1/23.
//

import UIKit

class GFTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius        = 10
        layer.borderWidth         = 2
        layer.borderColor         = UIColor.systemGray4.cgColor
        // Using symantic colors app to decided on Gray4
        
        textColor                 = .label
        tintColor                 = .label
        textAlignment             = .center
        font                      = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize           = 12
        
        backgroundColor           = .tertiarySystemBackground
        autocorrectionType        = .no
        // do not want autocorrect for usernames
        returnKeyType             = .go
        // This only customizes what the return key on the keyboard says. In order to activate it we have to the search vc will need to conform to the UITextfield delegate 
        clearButtonMode           = .whileEditing
        placeholder               = "Enter a username"
    }
   
}
