Pod::Spec.new do |s|
  s.name = 'NUI'
  s.version = '0.5.5'
  s.summary      = "Style iOS apps with a stylesheet, similar to CSS"
  s.homepage     = "https://github.com/cocoapodslegacy/nui"
  s.description  = "NUI is a drop-in UI kit for iOS that lets you style UI elements using a stylesheet, similar to CSS. It lets you style an entire app in minutes."

  s.license =  { :type => 'MIT' }
  s.authors = 'tangji'

  s.source           = { :http => "https://cdn.jsdelivr.net/gh/cocoapodslegacy/#{s.name.to_s}@0.5.5_-LongtermSupport/Framework/#{s.version.to_s}/#{s.name.to_s}.zip"}
  s.preserve_paths = "#{s.name.to_s}.framework"
  s.source_files = "#{s.name.to_s}.framework/Headers/*.h"
  s.vendored_frameworks = "#{s.name.to_s}.framework"
  s.resources = ['#{s.name.to_s}.framework/*.png', '#{s.name.to_s}.framework/*.nss']
  
  s.requires_arc = true

  s.static_framework = true

  s.ios.deployment_target = '8.0'

  s.ios.frameworks = [ "UIKit", "CoreGraphics","QuartzCore", "CoreImage" ]

  s.dependency 'NUIParse', '~>1.3'
end