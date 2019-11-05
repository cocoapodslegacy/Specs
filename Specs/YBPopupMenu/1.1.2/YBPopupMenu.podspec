Pod::Spec.new do |s|
  s.name         = "YBPopupMenu"
  s.version      = "1.1.2"
  s.summary      = "快速集成popupMenu"
  s.description  = "Code created and updated by Lyb."
  s.homepage     = "https://github.com/lyb5834/YBPopupMenu.git"
  s.license      = "MIT"
  s.author       = { "lyb" => "lyb5834@126.com" }
  s.source           = { :http => "https://cdn.jsdelivr.net/gh/cocoapodslegacy/#{s.name.to_s}@master/Framework/#{s.version.to_s}/#{s.name.to_s}.zip"}
  s.preserve_paths = "#{s.name.to_s}.framework"
  s.source_files = "#{s.name.to_s}.framework/Headers/*.h"
  s.vendored_frameworks = "#{s.name.to_s}.framework"
  
  s.requires_arc = true
  s.platform     = :ios, '7.0'
end
