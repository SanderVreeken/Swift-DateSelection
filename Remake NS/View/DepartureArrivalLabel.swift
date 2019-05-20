//
//  DepartureArrivalLabel.swift
//  Remake NS
//
//  Created by Alexander Frederik Vreeken on 04/04/2019.
//  Copyright © 2019 Alexander Frederik Vreeken. All rights reserved.
//

import UIKit

class DepartureArrivalLabel: UILabel {

    func setupView(superView: UIView) {
        self.font = UIFont(name: ".SFUIText-Medium", size: 13)
        self.textColor = DARK_BLUE_COLOR
        self.text = "Departure"
    }
    
    func changeText(text: String) {
        self.text = text
    }

}
