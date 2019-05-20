//
//  DoneButton.swift
//  Remake NS
//
//  Created by Alexander Frederik Vreeken on 04/04/2019.
//  Copyright © 2019 Alexander Frederik Vreeken. All rights reserved.
//

import UIKit

class DoneButton: UIView {
    
    let doneButtonLabel = DoneButtonLabel()

    func setupView(superView: UIView, topBottomHeightAnchor: UIView, trailingAnchor: UIView) {
        self.backgroundColor = BLUE_COLOR
        self.layer.cornerRadius = 4
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.topAnchor.constraint(equalTo: topBottomHeightAnchor.topAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: topBottomHeightAnchor.bottomAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: trailingAnchor.trailingAnchor).isActive = true
        self.heightAnchor.constraint(equalToConstant: topBottomHeightAnchor.frame.height).isActive = true
        self.widthAnchor.constraint(equalToConstant: 82).isActive = true
        
        self.addSubview(doneButtonLabel)
        doneButtonLabel.setupView(superView: self)
    }
    
    
    // Function created in order to save the date of the datePicker after the button has been pressed.
    func saveDateChanges(darkLayer: DarkLayer, segmentedControl: SegmentedControl, datePicker: DatePicker, departureArrivalLabel: DepartureArrivalLabel, dateLabel: DateLabel) {
        let canvasHeight = self.frame.height
        
        // Basic animation used to ensure smooth transition between pages.
        UIView.animate(withDuration: 0.6, animations: {
            self.frame.origin.y += (canvasHeight - CANVAS_BOTTOM_CONSTANT)
            
            let date = datePicker.date
            dateLabel.changeText(text: getDateInformation(date: date))
            
            var state = String()
            if segmentedControl.selectedSegmentIndex == 0 {
                state = "Departure"
            } else {
                state = "Arrival"
            }
            departureArrivalLabel.changeText(text: state)
            
        }, completion: { (finished: Bool) in
            darkLayer.isHidden = true
        })
    }

}
