#
# Be sure to run `pod lib lint VryPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VryPod'
  s.version          = '0.4.0'
  s.summary          = 'This is a library for VryCustom UI Components'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  'This is a library for VryCustom UI Components. Import and use the UI components'
                       DESC

  s.homepage         = 'https://github.com/ryanraj26/VryPod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ryanraj26' => 'ryan.raj27@outlook.com' }
  s.source           = { :git => 'https://github.com/ryanraj26/VryPod.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = '**/*.{h,m,swift,xcassets}'
  s.swift_version = "5.3"
  
  s.platforms = {
      "ios": "11.0"
  }
  
  s.resources = "**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

  
#   s.resource_bundles = {
#     'VryPod' => ['VryPod/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}']
#   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'XCTest'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'SnapKit', '~> 5.0.1'
end
