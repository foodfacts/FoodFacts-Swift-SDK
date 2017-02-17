//
//  FoodFacts.swift
//  Pods
//
//  Created by Mackensie Alvarez on 2/17/17.
//
//

import Foundation
import Alamofire
import SwiftyJSON
class FoodFacts {
    
   private var username: String = ""
   private var password: String = ""
   private var baseURL : String = "https://api.foodfacts.com/ci/api/foodfacts/"
    
    /**
     Configs username and password for all api calls.
     
     - parameter username: Username for API account.
     
     - parameter password: Password for API account.
     
     */
    func configuration(username: String, password: String){
        
        self.username = username
        self.password = password
    }
    
    /**
     Food Categories List
     
     */
    func foodCategories(callback: @escaping (FFCategoryResponse)->()){
        Alamofire.request(baseURL+"food_categories", method: .post, parameters: ["login": username, "password" : password]).responseJSON {response in
            if let j = response.result.value{
                //Check if vaild
                let json = JSON(j)
                if json["code"].intValue == 1001 {
                    //Error
                    print(json["message"].stringValue)
                } else {
                    //Success - response
                    let response = FFCategoryResponse(json: json)
                    callback(response)
                }
            }
        }
    }
    
    
    
}
