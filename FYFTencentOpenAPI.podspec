#
# Be sure to run `pod lib lint FYFTencentOpenAPI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'FYFTencentOpenAPI'
    s.version          = '3.5.11'
    s.summary          = '基于腾讯QQ官方开放的API'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
    DESC
    
    s.homepage         = 'https://github.com/lookingforfanyunfei/FYFTencentOpenAPI'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '786452470@qq.com' => 'fyf786452470@gmail.com' }
    s.source           = { :git => 'https://github.com/lookingforfanyunfei/FYFTencentOpenAPI.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.ios.deployment_target = '9.0'
    
    # 组件支持的架构，并且module化，为后期组件混编做准备，也为了规范化管理
    s.pod_target_xcconfig = {
      'VALID_ARCHS' => 'arm64e arm64 armv7 armv7s x86_64',
      'DEFINES_MODULE' => 'YES'
    }
    # 组件支持swift混编的版本
    s.swift_versions = ['5.1', '5.2','5.3', '5.4', '5.5']
        
    s.frameworks = 'Security', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony', 'WebKit'
    s.libraries = 'iconv', 'sqlite3', 'c++', 'z'
    
    s.vendored_frameworks = 'FYFTencentOpenAPI/Framework/TencentOpenAPI.framework'
    s.source_files = 'FYFTencentOpenAPI/Framework/TencentOpenAPI.framework/Headers/*'
    s.resource = 'FYFTencentOpenAPI/Assets/TencentOpenApi_IOS_Bundle.bundle'
    
    # s.resource_bundles = {
    #   'FYFTencentOpenAPI' => ['FYFTencentOpenAPI/Assets/*.png']
    # }
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    # s.dependency 'AFNetworking', '~> 2.3'
end
