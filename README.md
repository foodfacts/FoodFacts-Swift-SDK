# FoodFactsSDK

[![CI Status](http://img.shields.io/travis/mackensiealvarez/FoodFactsSDK.svg?style=flat)](https://travis-ci.org/mackensiealvarez/FoodFactsSDK)
[![Version](https://img.shields.io/cocoapods/v/FoodFactsSDK.svg?style=flat)](http://cocoapods.org/pods/FoodFactsSDK)
[![License](https://img.shields.io/cocoapods/l/FoodFactsSDK.svg?style=flat)](http://cocoapods.org/pods/FoodFactsSDK)
[![Platform](https://img.shields.io/cocoapods/p/FoodFactsSDK.svg?style=flat)](http://cocoapods.org/pods/FoodFactsSDK)

FoodFactsSDK Helps you get started with our amazing API in seconds.

## Requirements
- Swift 3
- Xcode 8
- FoodFacts API account ([Sign up](https://api.foodfacts.com/#plans))

## Installation

FoodFactsSDK is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "FoodFactsSDK"
```


#### Initialization
  In your `AppDelegate` , import `FoodFactsSDK`.
  ```Swift
  import FoodFactsSDK
  ```
  Next Add Your account credentials.
  ```Swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

      FoodFacts().configuration(username: "YOUR USERNAME GOES HERE", password: "YOUR PASSWORD GOES HERE")

      return true
  }
    ```
You're all set and ready to go!
## Usage
#### Food Categories List
Use `FoodFacts().categoryList` to get all Categories.

```Swift
FoodFacts().categoryList(callback: {response in
            for Category in response.categoies{
                print(Category.name)
            }
        })
```

#### Food Sub-Categories List
Use `FoodFacts().subCategoryList(category_id: )` to get all Sub Categories.
Use the `parent category id` for the `category_id` parameters.

```Swift
FoodFacts().subCategoryList(category_id: 21, callback: {response in
            for category in response.categoies{
                for sub_category in category.subCategories{
                    print(sub_category.name)
                }
            }
        })
```

#### Getting Products By Category
Use `FoodFacts().productsByCategory(category_id: Int, subcategory_id: Int, per_page: Int, page: Int, sort_by: String)` to get all products for a category.

- category_id = The parent Category ID.
- subcategory_id = The Sub Category ID.
- per_page = How many products to return.
- page = Page to start.
- sort_by = What to sort the products by.
  - peg_name.sort (Name Ascending)
  - peg_name.sort:desc (Name Descending)
  - pd_score (Score Ascending)
  - pd_score:desc (Score Descending)

```Swift
FoodFacts().productsByCategory(category_id: 21, subcategory_id: 256, per_page: 4, page: 1, sort_by: "peg_name.sort", callback: {response in

           for products in response.results.products{
               print(products.title)
           }
       })

```

#### Getting Products By Search Term
Use `FoodFacts().productsBySearchTerm(search_term: String, per_page: Int, page: Int, sort_by: String)` to get all products by search term.

- search_term = The search term.
- per_page = How many products to return.
- page = Page to start.
- sort_by = What to sort the products by.
  - peg_name.sort (Name Ascending)
  - peg_name.sort:desc (Name Descending)
  - pd_score (Score Ascending)
  - pd_score:desc (Score Descending)

  ```Swift
  FoodFacts().productsBySearchTerm(search_term: "apples", per_page: 4, page: 1, sort_by: "peg_name.sort", callback: {response in

             for products in response.results.products{
                 print(products.title)
             }
         })

  ```

#### Getting Product Information By Product ID
Use `FoodFacts().productInformationByID(product_id: String)` to get a product information.

```Swift
FoodFacts().productInformationByID(product_id: "", callback: {response in
            print(response.results.productDetail.title)
        })
```

#### Getting Product Information By UPC
Use `FoodFacts().productInformationByUPC(upc: String)` to get a product information.

```Swift
FoodFacts().productInformationByUPC(upc: "075720004096", callback: {response in
            print(response.results.productDetail.title)
        })
```
## License

FoodFactsSDK is available under the MIT license. See the LICENSE file for more info.
