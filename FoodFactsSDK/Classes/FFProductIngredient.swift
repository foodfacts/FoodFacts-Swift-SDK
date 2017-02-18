//
//  FFProductIngredient.swift
//  Pods
//
//  Created by Mackensie Alvarez on 2/17/17.
//
//

import Foundation
import SwiftyJSON

public class FFProductIngredient {
    
    public var allergens: String
    public var ingredient_id: Int
    public var name: String
    public var order: Int
    
    init(json : JSON) {
        self.allergens = json["allergens"].stringValue
        self.ingredient_id = json["ingredient_id"].intValue
        self.name = json["name"].stringValue
        self.order = json["order"].intValue
    }
    
}
