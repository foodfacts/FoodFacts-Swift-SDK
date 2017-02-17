//
//  FFSubCategory.swift
//  Pods
//
//  Created by Mackensie Alvarez on 2/17/17.
//
//

import Foundation
import SwiftyJSON

class FFSubCategory {
    
    var category_id: Int
    var name: String
    var parent_category_id: Int
   
    init(json : JSON) {
        self.category_id = json["category_id"].intValue
        self.name = json["name"].stringValue
        self.parent_category_id = json["parent_category_id"].intValue
    }

}
