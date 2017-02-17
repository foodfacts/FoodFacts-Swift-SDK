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
    
     /*
        -This is used to config and save the users username and password.
        - Function belongs in the app delagate
        - Username is the username for the api
        - Password is the password for that api account.
     */
    func configuration(username: String, password: String){
        
        self.username = username
        self.password = password
    }
    
    
}
