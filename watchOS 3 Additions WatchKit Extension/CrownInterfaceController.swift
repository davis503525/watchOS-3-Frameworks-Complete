//
//  CrownInterfaceController.swift
//  watchOS 3 Additions
//
//  Created by Davis Allie on 11/10/16.
//  Copyright © 2016 tutsplus. All rights reserved.
//

import WatchKit
import Foundation


class CrownInterfaceController: WKInterfaceController {

    @IBOutlet var label: WKInterfaceLabel!
    
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
