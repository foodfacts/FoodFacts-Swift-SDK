//
//  FFProductsDetailResponse.swift
//  Pods
//
//  Created by Mackensie Alvarez on 2/18/17.
//
//

import Foundation
import SwiftyJSON

public class FFProductResponse{
    
    public var code: Int
    public var userId: String
    public var apiRemaining: Int
    public var results : FFProductResults
    
    init(json: JSON) {
        self.code = json["code"].intValue
        self.userId = json["userId"].stringValue
        self.apiRemaining = json["apiRemaining"].intValue
        self.results = FFProductResults(json: json["results"])
    }

    
    
}
