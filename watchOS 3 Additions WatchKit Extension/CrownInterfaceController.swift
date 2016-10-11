//
//  CrownInterfaceController.swift
//  watchOS 3 Additions
//
//  Created by Davis Allie on 11/10/16.
//  Copyright © 2016 tutsplus. All rights reserved.
//

import WatchKit
import Foundation


class CrownInterfaceController: WKInterfaceController, WKCrownDelegate {

    @IBOutlet var label: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        crownSequencer.delegate = self
        crownSequencer.focus()
    }
    
    func crownDidRotate(_ crownSequencer: WKCrownSequencer?, rotationalDelta: Double) {
        if let speed = crownSequencer?.rotationsPerSecond {
            label.setText("Crown\nspeed:\n\(speed)")
        }
    }

    func crownDidBecomeIdle(_ crownSequencer: WKCrownSequencer?) {
        label.setText("Crown\nis idle")
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
