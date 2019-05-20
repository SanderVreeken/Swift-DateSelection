//
//  ViewController.swift
//  Remake NS
//
//  Created by Alexander Frederik Vreeken on 03/04/2019.
//  Copyright © 2019 Alexander Frederik Vreeken. All rights reserved.
//

import UIKit

// Function created in order to set the date information to a readable string.
func getDateInformation(date: Date) -> String {
    let dateFormatter = DateFormatter()
    
    dateFormatter.dateFormat = "HH:mm"
    let time = dateFormatter.string(from: date)
    dateFormatter.dateFormat = "E"
    let day = dateFormatter.string(from: date)
    dateFormatter.dateFormat = "MM-dd"
    let dayMonth = dateFormatter.string(from: date)
    
    return "\(time) \(day) \(dayMonth)"
}

class ViewController: UIViewController {
    
    let triggerButton = RegularButton()
    let darkLayer = DarkLayer()
    let canvasView = CanvasView()
    
    let segmentedControl = SegmentedControl(items: ["Departure", "Arrival"])
    let datePicker = DatePicker()
    let departureArrivalLabel = DepartureArrivalLabel()
    let dateLabel = DateLabel()
    let doneButton = DoneButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = YELLOW_COLOR
        
        view.addSubview(triggerButton)
        triggerButton.setupView(superView: view, departureArrivalLabel: departureArrivalLabel, dateLabel: dateLabel)
        
        let triggerButtonTap = UITapGestureRecognizer(target: self, action: #selector(self.handleTriggerTap(_:)))
        triggerButton.addGestureRecognizer(triggerButtonTap)
        
        view.addSubview(darkLayer)
        darkLayer.setupView(superView: view)
        
        let darkLayerTap = UITapGestureRecognizer(target: self, action: #selector(self.handleDarkLayerTap(_:)))
        darkLayer.addGestureRecognizer(darkLayerTap)
        
        view.addSubview(canvasView)
        canvasView.setupView(superView: view, segmentedControl: segmentedControl, datePicker: datePicker, doneButton: doneButton)
        
        let doneButtonTap = UITapGestureRecognizer(target: self, action: #selector(self.handleDoneButtonTap(_:)))
        doneButton.addGestureRecognizer(doneButtonTap)
    }
    
    @objc func handleDarkLayerTap(_ sender: UITapGestureRecognizer) {
        canvasView.animateCanvasViewDown(darkLayer: darkLayer, segmentedControl: segmentedControl, datePicker: datePicker, departureArrivalLabel: departureArrivalLabel, dateLabel: dateLabel)
    }
    
    @objc func handleTriggerTap(_ sender: UITapGestureRecognizer) {
        canvasView.animateCanvasViewUp(darkLayer: darkLayer)
    }
    
    @objc func handleDoneButtonTap(_ sender: UITapGestureRecognizer) {
        doneButton.saveDateChanges(darkLayer: darkLayer, segmentedControl: segmentedControl, datePicker: datePicker, departureArrivalLabel: departureArrivalLabel, dateLabel: dateLabel)
    }
}


