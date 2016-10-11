//
//  InterfaceController.swift
//  watchOS 3 Additions WatchKit Extension
//
//  Created by Davis Allie on 11/10/16.
//  Copyright © 2016 tutsplus. All rights reserved.
//

import WatchKit
import Foundation
import SceneKit

class SceneKitInterfaceController: WKInterfaceController {
    
    @IBOutlet var sceneItem: WKInterfaceSCNScene!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    @IBAction func didPress() {
        if let paused = sceneItem.scene?.isPaused {
            sceneItem?.scene?.isPaused = !paused
        }
    }
}
