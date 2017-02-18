#
# Be sure to run `pod lib lint FoodFactsSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'FoodFactsSDK'
s.version          = '0.2.2'
s.summary          = 'FoodFacts Swift SDK For IOS'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = <<-DESC
FoodFacts Swift SDK For IOS. This is a framework to help you get started with the FoodFacts API. Install libiary to project to easiy get started with a few lines of code.

DESC

s.homepage         = 'https://github.com/foodfacts/FoodFacts-Swift-SDK'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'FoodFacts' => 'greymattermack@gmail.com' }
s.source           = { :git => 'https://github.com/foodfacts/FoodFacts-Swift-SDK.git', :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.ios.deployment_target = '8.0'

s.source_files = 'FoodFactsSDK/Classes/**/*'

# s.resource_bundles = {
#   'FoodFactsSDK' => ['FoodFactsSDK/Assets/*.png']
# }

# s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'Alamofire','SwiftyJSON'
s.dependency 'Alamofire'
s.dependency 'SwiftyJSON'
end
