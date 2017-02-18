//
//  FFProductVitamins.swift
//  Pods
//
//  Created by Mackensie Alvarez on 2/18/17.
//
//

import Foundation
import SwiftyJSON

public class FFProductVitamin{
    
    public var amount: Int
    public var name: String
    public var percent: Int
    
    init(json: JSON) {
        
        self.amount = json["amount"].intValue
        self.name = json["name"].stringValue
        self.percent = json["percent"].intValue
        
    }
}
