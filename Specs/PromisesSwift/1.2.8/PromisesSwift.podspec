Pod::Spec.new do |s|
  s.name        = 'PromisesSwift'
  s.version     = '1.2.8'
  s.authors     = 'Google Inc.'
  s.license     = { :type => 'Apache', :file => 'LICENSE' }
  s.homepage    = 'https://github.com/google/promises'
  s.summary     = 'Synchronization construct for Swift'
  s.description = <<-DESC
  Promises is a modern framework that provides a synchronization construct for
  Swift to facilitate writing asynchronous code.
                     DESC

  s.ios.deployment_target  = '8.0'
  s.osx.deployment_target  = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source           = { :http => "https://rawcdn.githack.com/cocoapodslegacy/promises/master/Framework/#{s.version.to_s}/Promises.zip"}
  s.preserve_paths = "Promises.framework"
  s.source_files = "Promises.framework/Headers/*.h"
  s.vendored_frameworks = "Promises.framework"
  
  s.dependency 'PromisesObjC', "#{s.version}"
end