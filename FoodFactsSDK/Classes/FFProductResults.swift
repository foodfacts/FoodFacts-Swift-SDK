//
//  FFProductResults.swift
//  Pods
//
//  Created by Mackensie Alvarez on 2/18/17.
//
//

import Foundation
import SwiftyJSON
public class FFProductResults{
    
    public var productDetail: FFProductDetail
    public var productNutrition: [FFProductNutrition]
    public var productVitamins: [FFProductVitamin]
    public var productIngredients: [FFProductIngredient]
    public var productAllergens: [FFProductAllergen]
    public var productReportCard: [FFProductReportCard]
    
    init(json : JSON) {
 
        self.productDetail =  FFProductDetail(json: json["product_detail"])
        
        self.productNutrition =  json["product_nutrition"].arrayValue.map({ j in return FFProductNutrition(json: j) })
        self.productVitamins =  json["product_vitamins"].arrayValue.map({ j in return FFProductVitamin(json: j) })
        self.productIngredients =  json["product_ingredients"].arrayValue.map({ j in return FFProductIngredient(json: j) })
        self.productAllergens =  json["product_allergens"].arrayValue.map({ j in return FFProductAllergen(json: j) })
        
        self.productReportCard =  json["report_card"].arrayValue.map({ j in return FFProductReportCard(json: j) })
        
        
    }

}
