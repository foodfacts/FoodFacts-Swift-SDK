//
//  FFProductDetail.swift
//  Pods
//
//  Created by Mackensie Alvarez on 2/18/17.
//
//

import Foundation
import SwiftyJSON

public class FFProductDetail{
    
    public var allergen_list: String
    public var brand: String
    public var main_category_name: String
    public var product_id: String
    public var product_image: String
    public var product_upc: String
    public var sef_url: String
    public var serving_size: String
    public var sub_category_name: String
    public var title: String
    public var total_weight: String
    public var food_facts_score: Int
    public var main_category_id: Int
    public var sub_category_id: Int
    
    
    init(json : JSON) {
        
        self.allergen_list = json["allergen_list"].stringValue
        self.brand = json["brand"].stringValue
        self.main_category_name = json["main_category_name"].stringValue
        self.product_id = json["product_id"].stringValue
        self.product_image = json["product_image"].stringValue
        self.product_upc = json["product_upc"].stringValue
        self.sef_url = json["sef_url"].stringValue
        self.serving_size = json["serving_size"].stringValue
        self.sub_category_name = json["sub_category_name"].stringValue
        self.title = json["title"].stringValue
        self.total_weight = json["total_weight"].stringValue
        self.food_facts_score = json["food_facts_score"].intValue
        self.main_category_id = json["main_category_id"].intValue
        self.sub_category_id = json["sub_category_id"].intValue

        
    }
    
}
