//
//  InterfaceController.swift
//  Apple Watch App WatchKit Extension
//
//  Created by Eric Dolan
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var nameLabel: WKInterfaceLabel!
    
    
    @IBAction func buttonPressed() {
        
        nameLabel.setText("My app is working!")
        
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        print("My app is working!")
        
        
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        NSLog("%@ will activate", self)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        NSLog("%@ did deactivate", self)
        super.didDeactivate()
    }

}
