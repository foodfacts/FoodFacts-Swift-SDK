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
        FoodFacts().productsBySearchTerm(search_term: "apples", per_page: 10, page: 1, sort_by: "peg_name.sort", callback: {response in
            for product in response.results.products{
                print(product.title) //Product name
            }
        })
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

