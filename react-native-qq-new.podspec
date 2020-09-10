#
#  Be sure to run `pod spec lint react-native-qq.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platforms    = { :ios => "10.0" }

  s.source       = { :git => "https://github.com/qianshang/react-native-qq.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/RCTQQAPI/*.{h,m}"
  s.ios.vendored_frameworks = 'ios/RCTQQAPI/TencentOpenAPI.framework'

  s.dependency 'React'
end