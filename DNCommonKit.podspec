#
# Be sure to run `pod lib lint DNCommonKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DNCommonKit'
  s.version          = '10.0.1'
  s.summary          = '存放重用的分类、工具类等'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/DoNewsCode/DNCommonKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'JiaJung' => 'zhengjia@donews.com' }
  s.source           = { :git => 'https://github.com/DoNewsCode/DNCommonKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

# s.source_files = 'DNCommonKit/Classes/**/*'

s.subspec 'DNBaseMacro' do |m|
    m.source_files = 'DNCommonKit/Classes/DNBaseMacro/**/*'
end

s.subspec 'DNCustomView' do |v|
    v.source_files = 'DNCommonKit/Classes/DNCustomView/**/*'
    v.dependency 'DNCommonKit/DNHandyCategory'
end

s.subspec 'DNTools' do |t|
    t.source_files = 'DNCommonKit/Classes/DNTools/**/*'
    t.dependency 'YYText'
end

s.subspec 'DNLayout' do |l|
    l.source_files = 'DNCommonKit/Classes/DNLayout/**/*'
end

s.subspec 'DNHandyCategory' do |c|
    c.source_files = 'DNCommonKit/Classes/DNHandyCategory/**/*'
    c.dependency 'SDWebImage'
    c.dependency 'DNCommonKit/DNLayout'
    c.pod_target_xcconfig = {
        "GCC_PREPROCESSOR_DEFINITIONS" => 'DEBUG=1'
    }
end

#s.user_target_xcconfig = { 'MY_SUBSPEC' => 'YES' }

  
  # s.resource_bundles = {
  #   'DNCommonKit' => ['DNCommonKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  #s.dependency 'SDWebImage'
  
end
