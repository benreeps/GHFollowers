//
//  GFButton.swift
//  GHFollowers
//
//  Created by Benjamin Reeps on 3/1/23.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        // Override is required in order to customize the existing button init
        super.init(frame: frame)
        // .super means to build on top of the existing object UIButton
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        // This is what handles initialization via storyboard.
    }
    
    
     init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
      //  set(backgroundColor: backgroundColor, title: title)
        // Init with a frame of zero bc we will do this with auto layout constraints
        self.backgroundColor = backgroundColor
        // self means thsi GFButton
        self.setTitle(title, for: .normal)
        // settign title to whatever we passs in
        configure()
    }
    
    
    private func configure() {
        layer.cornerRadius      = 10
        setTitleColor(.white, for: .normal)
        titleLabel?.font        = UIFont.preferredFont(forTextStyle: .headline)
        // Dynamic type is set to feel like apple rather than custom font, but it is possible to create custom font with dynamic type 
        translatesAutoresizingMaskIntoConstraints = false
        // By putting this here every GFButton
    }
    
    func set(backgroundColor: UIColor, title: String) {
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
    }
}
