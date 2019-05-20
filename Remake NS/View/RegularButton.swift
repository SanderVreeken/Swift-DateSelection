//
//  RegularButton.swift
//  Remake NS
//
//  Created by Alexander Frederik Vreeken on 03/04/2019.
//  Copyright © 2019 Alexander Frederik Vreeken. All rights reserved.
//

import UIKit

class RegularButton: UIView {

    func setupView(superView: UIView, departureArrivalLabel: DepartureArrivalLabel, dateLabel: DateLabel) {
        self.backgroundColor = UIColor.white
        self.layer.cornerRadius = 8
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerXAnchor.constraint(equalTo: superView.centerXAnchor).isActive = true
        self.centerYAnchor.constraint(equalTo: superView.centerYAnchor, constant: -72).isActive = true
        self.heightAnchor.constraint(equalToConstant: 42).isActive = true
        self.widthAnchor.constraint(equalToConstant: superView.frame.width / 1.4).isActive = true
        
        self.addSubview(departureArrivalLabel)
        departureArrivalLabel.setupView(superView: self)
        self.addSubview(dateLabel)
        dateLabel.setupView(superView: self)
        let dateStackView = DateStackView(arrangedSubviews: [departureArrivalLabel, dateLabel])
        self.addSubview(dateStackView)
        dateStackView.setupView(superView: self)
    }

}
