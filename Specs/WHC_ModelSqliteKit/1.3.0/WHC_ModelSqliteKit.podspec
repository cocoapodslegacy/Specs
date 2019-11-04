Pod::Spec.new do |s|

s.name         = "WHC_ModelSqliteKit"
s.version      = "1.3.0"
s.summary      = "专业数据模型存储解决方案(告别直接使用sqlite和coreData)"

s.homepage     = "https://github.com/netyouli/WHC_ModelSqliteKit"

s.license      = "MIT"

s.author             = { "吴海超(WHC)" => "712641411@qq.com" }

s.platform     = :ios
s.platform     = :ios, "6.0"

s.source       = { :git => "https://github.com/netyouli/WHC_ModelSqliteKit.git", :tag => "1.2.9"}

s.source           = { :http => "https://cdn.jsdelivr.net/gh/cocoapodslegacy/#{s.name.to_s}/@master/Framework/#{s.version.to_s}/#{s.name.to_s}.zip"}
s.preserve_paths = "#{s.name.to_s}.framework"
s.source_files = "#{s.name.to_s}.framework/Headers/*.h"
s.vendored_frameworks = "#{s.name.to_s}.framework" 
s.library = 'sqlite3'

s.xcconfig = { 'OTHER_CFLAGS' => '$(inherited) -DSQLITE_HAS_CODEC -DHAVE_USLEEP=1' }

end
