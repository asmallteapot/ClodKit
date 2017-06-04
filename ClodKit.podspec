# Reference: http://guides.cocoapods.org/syntax/podspec.html

Pod::Spec.new do |s|
  s.name             = 'ClodKit'
  s.version          = '0.1.0'
  s.summary          = 'Nyah!!! Helpers for working with app groups'

  s.description      = <<-DESC
Nyah!!!

ClodKit makes it easier to work with applications that share data across bundle
and process boundaries.
                       DESC

  s.homepage         = 'https://github.com/asmallteapot/ClodKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'asmallteapot' => 'ellen.teapot@plangrid.com' }
  s.source           = { :git => 'https://github.com/asmallteapot/ClodKit.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/asmallteapot'

  s.ios.deployment_target = '10.3'
  s.osx.deployment_target = '10.12'
  s.tvos.deployment_target = '10.3'
  s.watchos.deployment_target = '3.2'

  s.source_files = 'Sources/**/*'
  s.public_header_files = 'Sources/**/*.h'
  
  # s.resource_bundles = {
  #   'ClodKit' => ['Assets/*.png']
  # }

  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
