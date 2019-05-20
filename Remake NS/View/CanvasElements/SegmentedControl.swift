//
//  SegmentedControl.swift
//  Remake NS
//
//  Created by Alexander Frederik Vreeken on 04/04/2019.
//  Copyright © 2019 Alexander Frederik Vreeken. All rights reserved.
//

import UIKit

class SegmentedControl: UISegmentedControl {

    func setupView(superView: UIView, bottomLeadingAnchor: UIView) {
        self.selectedSegmentIndex = 0
        self.tintColor = BLUE_COLOR
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.bottomAnchor.constraint(equalTo: bottomLeadingAnchor.topAnchor).isActive = true
        self.leadingAnchor.constraint(equalTo: bottomLeadingAnchor.leadingAnchor).isActive = true
    }

}
