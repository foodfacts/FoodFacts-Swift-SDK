//
//  ViewController.swift
//  FoodFactsSDK
//
//  Created by mackensiealvarez on 02/16/2017.
//  Copyright (c) 2017 mackensiealvarez. All rights reserved.
//

import UIKit
import FoodFactsSDK
class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //One line of code to show products
        FoodFacts().productsByCategory(category_id: 21, subcategory_id: 256, per_page: 4, page: 1, sort_by: "peg_name.sort", callback: {response in
            
            for products in response.results.products{
                print(products.title)
            }
        })
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

