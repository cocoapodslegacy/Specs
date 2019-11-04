Pod::Spec.new do |s|
  s.name        = 'PromisesObjC'
  s.version     = '1.2.8'
  s.authors     = 'Google Inc.'
  s.license     = { :type => 'Apache', :file => 'LICENSE' }
  s.homepage    = 'https://github.com/google/promises'
  s.summary     = 'Synchronization construct for Objective-C'
  s.description = <<-DESC

  Promises is a modern framework that provides a synchronization construct for
  Objective-C to facilitate writing asynchronous code.
                     DESC

  s.ios.deployment_target  = '8.0'
  s.osx.deployment_target  = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source           = { :http => "https://cdn.jsdelivr.net/gh/cocoapodslegacy/promises/@master/Framework/#{s.version.to_s}/FBLPromises.zip"}
  s.preserve_paths = "FBLPromises.framework"
  s.source_files = "FBLPromises.framework/Headers/*.h"
  s.vendored_frameworks = "FBLPromises.framework"

  s.module_name = 'FBLPromises'
  s.xcconfig = {
    'HEADER_SEARCH_PATHS' => "\"${PODS_TARGET_SRCROOT}/Sources/#{s.module_name}/include\""
  }
end
