//
//  FFProductReportCard.swift
//  Pods
//
//  Created by Mackensie Alvarez on 2/18/17.
//
//

import Foundation
import SwiftyJSON

public class FFProductReportCard{
    
    public var good_or_bad: String
    public var heading: String
    public var text: String
    public var type: String
    
    init(json: JSON) {
        
        self.good_or_bad = json["good_or_bad"].stringValue
        self.heading = json["heading"].stringValue
        self.text = json["text"].stringValue
        self.type = json["type"].stringValue
        
    }
}
