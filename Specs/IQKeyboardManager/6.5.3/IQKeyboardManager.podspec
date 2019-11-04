Pod::Spec.new do |s|
  s.name = 'IQKeyboardManager'
  s.version = '6.5.3'
  s.summary = 'Codeless drop-in universal library allows to prevent issues of keyboard sliding up and cover UITextField/UITextView.'
  s.homepage = 'https://github.com/hackiftekhar/IQKeyboardManager'
  s.screenshots = 'https://raw.githubusercontent.com/hackiftekhar/IQKeyboardManager/master/Screenshot/IQKeyboardManagerScreenshot.png'
  s.description = 'A data-driven UICollectionView framework for building fast and flexible lists.'

  s.license =  { :type => 'MIT' }
  s.authors = 'Iftekhar Qurashi'

  s.source           = { :http => "https://cdn.jsdelivr.net/gh/cocoapodslegacy/#{s.name.to_s}/@master/Framework/#{s.version.to_s}/#{s.name.to_s}.zip"}
  s.preserve_paths = "#{s.name.to_s}.framework"
  s.source_files = "#{s.name.to_s}.framework/Headers/*.h"
  s.vendored_frameworks = "#{s.name.to_s}.framework"
  
  s.requires_arc = true

  s.ios.deployment_target = '8.0'

  s.ios.frameworks = ['UIKit','Foundation','CoreGraphics','QuartzCore']
end
