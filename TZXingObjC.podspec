#
# Be sure to run `pod lib lint TZXingObjC.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TZXingObjC'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TZXingObjC.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/薛焱/TZXingObjC'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '薛焱' => 'yan.xue@aihuishou.com' }
  s.source           = { :git => 'https://github.com/薛焱/TZXingObjC.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'TZXingObjC/*.{h,m}', 'TZXingObjC/client/*.{h,m}', 'TZXingObjC/common/**/*.{h,m}', 'TZXingObjC/core/**/*.{h,m}', 'TZXingObjC/multi/**/*.{h,m}', 'TZXingObjC/oned/**/*.{h,m}', 'TZXingObjC/client/result/**/*.{h,m}', 'TZXingObjC/qrcode/**/*.{h,m}'
  s.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => "ZXINGOBJC_USE_SUBSPECS ZXINGOBJC_ONED ZXINGOBJC_QRCODE" }
  
  # s.resource_bundles = {
  #   'TZXingObjC' => ['TZXingObjC/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
