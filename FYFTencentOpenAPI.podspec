#
# Be sure to run `pod lib lint FYFTencentOpenAPI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'FYFTencentOpenAPI'
    s.version          = '0.1.0'
    s.summary          = 'A short description of FYFTencentOpenAPI.'
    
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
    
    #  s.source_files = 'FYFTencentOpenAPI/Classes/**/*'
    
    s.frameworks = 'Security', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony', 'WebKit'
    s.libraries = 'iconv', 'sqlite3', 'c++', 'z'
    
    s.vendored_frameworks = 'FYFTencentOpenAPI/Framework/TencentOpenAPI.framework'
    s.source_files = 'FYFTencentOpenAPI/Framework/TencentOpenAPI.framework/Headers/*'
    s.resource = 'FYFTencentOpenAPI/Assets/TencentOpenApi_IOS_Bundle.bundle'
    
    #  s.pod_target_xcconfig = {
    #    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    #    'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/TencentOpenAPI.framework/Headers/'
    #  }
    #  sc.user_target_xcconfig = {
    #    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    #
    #  }
    
    # s.resource_bundles = {
    #   'FYFTencentOpenAPI' => ['FYFTencentOpenAPI/Assets/*.png']
    # }
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    # s.dependency 'AFNetworking', '~> 2.3'
end
