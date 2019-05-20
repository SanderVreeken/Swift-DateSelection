//
//  DateLabel.swift
//  Remake NS
//
//  Created by Alexander Frederik Vreeken on 04/04/2019.
//  Copyright © 2019 Alexander Frederik Vreeken. All rights reserved.
//

import UIKit

class DateLabel: UILabel {

    func setupView(superView: UIView) {
        self.font = UIFont(name: ".SFUIText", size: 14)
        self.textColor = DARK_BLUE_COLOR
        
        let date = Date()
        self.text = getDateInformation(date: date)
    }
    
    func changeText(text: String) {
        self.text = text
    }

}
