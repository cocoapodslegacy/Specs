Pod::Spec.new do |s|
  s.name = 'IGListKit'
  s.version = '3.4.0'
  s.summary = 'A data-driven UICollectionView framework.'
  s.homepage = 'https://github.com/Instagram/IGListKit'
  s.documentation_url = 'https://instagram.github.io/IGListKit'
  s.description = 'A data-driven UICollectionView framework for building fast and flexible lists.'

  s.license =  { :type => 'MIT' }
  s.authors = 'Instagram'
  s.social_media_url = 'https://twitter.com/fbOpenSource'

  s.source           = { :http => "https://rawcdn.githack.com/cocoapodslegacy/#{s.name.to_s}/master/Framework/#{s.version.to_s}/#{s.name.to_s}.zip"}
  s.preserve_paths = "#{s.name.to_s}.framework"
  s.source_files = "#{s.name.to_s}.framework/Headers/*.h"
  s.vendored_frameworks = "#{s.name.to_s}.framework"
  
  s.requires_arc = true

  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'

  s.ios.frameworks = 'UIKit'
  s.tvos.frameworks = 'UIKit'
  s.osx.frameworks = 'Cocoa'

  s.library = 'c++'
  s.pod_target_xcconfig = {
       'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
       'CLANG_CXX_LIBRARY' => 'libc++'
  }
end