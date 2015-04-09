//
//  Twitter.swift
//  CH
//
//  Created by Arthur Sabintsev on 4/2/15.
//  Copyright (c) 2015 ID.me. All rights reserved.
//

import Foundation
import WatchKit

class Twitter
{
    typealias Profile = [[String: AnyObject]]
    
    func fetchProfiles() -> Profile {
        
        let arthur = ["Name": "Arthur Sabintsev", "Picture": "arthur", "Company": "ID.me", "Handle": "@ArtSabintsev"]
        let hardip = ["Name": "Hardip Singh", "Picture": "hardip", "Company": "WaPo", "Handle": "@Hardip_Singh"]
        let stuart = ["Name": "Stuart Moore", "Picture": "stuart", "Company": "WaPo", "Handle": "@at_underscore"]
        
        return [arthur, hardip, stuart]
    }
}
