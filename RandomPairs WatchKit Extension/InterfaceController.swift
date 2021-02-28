//
//  InterfaceController.swift
//  RandomPairs WatchKit Extension
//
//  Created by David Rossouw on 2020-10-01.
//  Copyright © 2020 David Rossouw. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

//    var sliderValue:Float = 1.0
    
    @IBOutlet weak var slider: WKInterfaceSlider!
    
    @IBOutlet weak var label: WKInterfaceLabel!
    
    @IBOutlet weak var assignmentLabel: WKInterfaceLabel!
    
    @IBAction func sliderDidChange(_ value: Float) {
        print("value: ", value)
        label.setText("Players: \(Int(value))")
        let sequence = 1...Int(value)
        let shuffled = sequence.shuffled()
        var output = [String]()
        for i in stride(from: 0, to: shuffled.count - 1, by: 2) {
            output.append(String(shuffled[i])+" v "+String(shuffled[i+1]))
        }
        //assignmentLabel.li = output.count
        assignmentLabel.setText(output.joined(separator: "\n"))
        print(output.joined(separator: "\n"))
    }
      
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        // Configure interface objects here.
    }

    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
