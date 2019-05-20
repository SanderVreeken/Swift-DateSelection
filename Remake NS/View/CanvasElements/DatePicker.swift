//
//  DatePicker.swift
//  Remake NS
//
//  Created by Alexander Frederik Vreeken on 04/04/2019.
//  Copyright © 2019 Alexander Frederik Vreeken. All rights reserved.
//

import UIKit

class DatePicker: UIDatePicker {

    func setupView(superView: UIView) {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerXAnchor.constraint(equalTo: superView.centerXAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -20).isActive = true
    }

}
