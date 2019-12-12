Pod::Spec.new do |s|
  s.name = 'NUIParse'
  s.version = '1.3'
  s.summary      = "A shift/reduce parsing framework for Mac OS X and iOS"
  s.homepage     = "https://github.com/tombenner/NUIParse"
  s.description = 'A data-driven UICollectionView framework for building fast and flexible lists.'

  s.license =  { :type => 'MIT' }
  s.authors = 'tangji'

  s.source           = { :http => "https://cdn.jsdelivr.net/gh/cocoapodslegacy/#{s.name.to_s}@1.3_引入问题修改/Framework/#{s.version.to_s}/#{s.name.to_s}.zip"}
  s.preserve_paths = "#{s.name.to_s}.framework"
  s.source_files = "#{s.name.to_s}.framework/Headers/*.h"
  s.vendored_frameworks = "#{s.name.to_s}.framework"
  
  s.requires_arc = true

  s.ios.deployment_target = '8.0'

  s.ios.frameworks = ['Cocoa','Foundation']
end