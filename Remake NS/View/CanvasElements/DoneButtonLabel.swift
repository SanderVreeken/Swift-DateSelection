//
//  DoneButtonLabel.swift
//  Remake NS
//
//  Created by Alexander Frederik Vreeken on 04/04/2019.
//  Copyright © 2019 Alexander Frederik Vreeken. All rights reserved.
//

import UIKit

class DoneButtonLabel: UILabel {

    func setupView(superView: UIView) {
        self.font = UIFont(name: ".SFUIText", size: 14)
        self.textColor = UIColor.white
        self.text = "Done"
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerXAnchor.constraint(equalTo: superView.centerXAnchor).isActive = true
        self.centerYAnchor.constraint(equalTo: superView.centerYAnchor).isActive = true
    }

}
