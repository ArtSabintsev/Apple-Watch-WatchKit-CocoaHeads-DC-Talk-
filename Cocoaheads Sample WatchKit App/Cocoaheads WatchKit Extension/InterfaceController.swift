//
//  InterfaceController.swift
//  Cocoaheads WatchKit Extension
//
//  Created by Arthur Sabintsev on 4/2/15.
//  Copyright (c) 2015 ID.me. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController
{
    @IBOutlet weak var button0: WKInterfaceButton!
    @IBOutlet weak var button1: WKInterfaceButton!
    @IBOutlet weak var button2: WKInterfaceButton!
    
    var profiles: [[String: AnyObject]] = []
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        profiles = Twitter().fetchProfiles()
        
    }

    override func willActivate() {
        
        for (idx, profile) in enumerate(profiles) {
            
            let name = profiles[idx]["Name"] as! String
            
            switch idx {
                case 0:
                    button0.setTitle(name)
                case 1:
                    button1.setTitle(name)
                case 2:
                    button2.setTitle(name)
                default:
                    break
            }

        }
        
        super.willActivate()
    }

    override func didDeactivate() {

        
        super.didDeactivate()
    }

}

// MARK: Actions
extension InterfaceController
{
    @IBAction func button0Action() {
        pushControllerWithName("ProfileInterfaceController", context: profiles[0])
    }

    @IBAction func button1Action() {
        pushControllerWithName("ProfileInterfaceController", context: profiles[1])
    }
    
    @IBAction func button2Action() {
        pushControllerWithName("ProfileInterfaceController", context: profiles[2])
    }
    
}
