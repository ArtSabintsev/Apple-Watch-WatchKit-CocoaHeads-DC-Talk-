//
//  ProfileInterfaceController.swift
//  Cocoaheads
//
//  Created by Arthur Sabintsev on 4/2/15.
//  Copyright (c) 2015 ID.me. All rights reserved.
//

import Foundation
import WatchKit

class ProfileInterfaceController: WKInterfaceController {

    @IBOutlet weak var handle: WKInterfaceLabel!
    @IBOutlet weak var company: WKInterfaceLabel!
    @IBOutlet weak var name: WKInterfaceLabel!
    @IBOutlet weak var image: WKInterfaceImage!
    
    override func awakeWithContext(context: AnyObject?) {
        
        if let profile = context as? [String: AnyObject] {
            
            let image = profile["Picture"] as! String
            self.image.setImageNamed(image)
            
            let name = profile["Name"] as! String
            self.name.setText(name)
            
            let company = profile["Company"] as! String
            self.company.setText(company)
            
            let handle = profile["Handle"] as! String
            self.handle.setText(handle)
        }
    }
}
