//
//  FFCategoryResponse.swift
//  Pods
//
//  Created by Mackensie Alvarez on 2/17/17.
//
//

import Foundation
import SwiftyJSON

public class FFCategoryListResponse {
    
   public  var code: Int
   public var userId: String
   public var apiRemaining: Int
   public var categoies : [FFCategory]
    
    init(json: JSON) {
        self.code = json["code"].intValue
        self.userId = json["userId"].stringValue
        self.apiRemaining = json["apiRemaining"].intValue
        self.categoies = json["results"].arrayValue.map({ j in return FFCategory(json: j) })
        


    }
    
}
