//
//  FFProductResults.swift
//  Pods
//
//  Created by Mackensie Alvarez on 2/17/17.
//
//

import Foundation

import SwiftyJSON
public class FFProductsResults {
    
    public var totalResults: Int
    public var resultsPerPage: String
    public var currentPage: String
    public var code: Int
    
    public var products: [FFProduct]
    
    init(json : JSON) {
        self.totalResults = json["totalResults"].intValue
        self.resultsPerPage = json["resultsPerPage"].stringValue
        self.currentPage = json["currentPage"].stringValue
        self.code = json["code"].intValue
        
        self.products =  json["products"].arrayValue.map({ j in return FFProduct(json: j) })
        
    }

    
}
