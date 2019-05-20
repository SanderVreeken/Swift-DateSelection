//
//  CanvasView.swift
//  Remake NS
//
//  Created by Alexander Frederik Vreeken on 03/04/2019.
//  Copyright © 2019 Alexander Frederik Vreeken. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    func setupView(superView: UIView, segmentedControl: SegmentedControl, datePicker: DatePicker, doneButton: DoneButton) {
        self.backgroundColor = UIColor.white
        self.layer.cornerRadius = 26
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: CANVAS_BOTTOM_CONSTANT + superView.frame.height * 0.42).isActive = true
        self.heightAnchor.constraint(equalToConstant: superView.frame.height * 0.42).isActive = true
        
        self.addSubview(datePicker)
        datePicker.setupView(superView: self)
        self.addSubview(segmentedControl)
        segmentedControl.setupView(superView: self, bottomLeadingAnchor: datePicker)
        self.addSubview(doneButton)
        
        doneButton.setupView(superView: self, topBottomHeightAnchor: segmentedControl, trailingAnchor: datePicker)
    }
    
    // Functions should be combined, the split should be made with a if-else statement.
    func animateCanvasViewDown(darkLayer: DarkLayer, segmentedControl: SegmentedControl, datePicker: DatePicker, departureArrivalLabel: DepartureArrivalLabel, dateLabel: DateLabel) {
        let canvasHeight = self.frame.height
        
        UIView.animate(withDuration: 0.6, animations: {
            self.frame.origin.y += (canvasHeight - CANVAS_BOTTOM_CONSTANT)
        }, completion: { (finished: Bool) in
            darkLayer.isHidden = true
        })
    }
    
    func animateCanvasViewUp(darkLayer: DarkLayer) {
        let canvasHeight = self.frame.height
        
        UIView.animate(withDuration: 0.6, animations: {
            self.frame.origin.y -= (canvasHeight - CANVAS_BOTTOM_CONSTANT)
        }, completion: { (finished: Bool) in
            darkLayer.isHidden = false
        })
    }

}
