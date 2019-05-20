//
//  DateStackView.swift
//  Remake NS
//
//  Created by Alexander Frederik Vreeken on 04/04/2019.
//  Copyright © 2019 Alexander Frederik Vreeken. All rights reserved.
//

import UIKit

class DateStackView: UIStackView {

    func setupView(superView: UIView) {
        self.spacing = 14
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerXAnchor.constraint(equalTo: superView.centerXAnchor).isActive = true
        self.centerYAnchor.constraint(equalTo: superView.centerYAnchor).isActive = true
    }

}
