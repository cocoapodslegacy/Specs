Pod::Spec.new do |s|
  s.name             = 'BaiduMapKit'
  s.version          = '3.4.2'
  s.summary          = '百度地图iOS SDK（Boco镜像库）.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://boco.site/iOSBasics/BocoBaiduMapKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mrdaios' => 'mrdaios@gmail.com' }
  s.source           = { :http => "https://rawcdn.githack.com/cocoapodslegacy/BaiduMapKit/c1511b37dac7ea7c023dd6b019fa005169564113/Framework/3.4.2/BaiduMapKit.zip"}

  s.ios.deployment_target = '7.0'
  
  s.requires_arc = true
  
  s.subspec 'Base' do |base|
      base.source_files = ['BaiduMapKit/BaiduMapAPI_Base.framework/Headers/*.h']
      base.frameworks = 'CoreLocation','QuartzCore','OpenGLES','SystemConfiguration','CoreGraphics','Security','CoreTelephony','BaiduMapAPI_Base'
      base.libraries = 'sqlite3.0','c++'
      base.vendored_frameworks = 'BaiduMapKit/BaiduMapAPI_Base.framework'
      base.vendored_libraries = 'BaiduMapKit/thirdlibs/*.a'
  end
  s.subspec 'Cloud' do |cloud|
      cloud.source_files = 'BaiduMapKit/BaiduMapAPI_Cloud.framework/Headers/*.h'
      cloud.frameworks = 'BaiduMapAPI_Cloud'
      cloud.vendored_frameworks = 'BaiduMapKit/BaiduMapAPI_Cloud.framework'
      cloud.dependency 'BaiduMapKit/Base'
  end
  s.subspec 'Location' do |location|
      location.source_files = 'BaiduMapKit/BaiduMapAPI_Location.framework/Headers/*.h'
      location.frameworks = 'BaiduMapAPI_Location'
      location.vendored_frameworks = 'BaiduMapKit/BaiduMapAPI_Location.framework'
      location.dependency 'BaiduMapKit/Base'
  end
  s.subspec 'Map' do |map|
      map.source_files = 'BaiduMapKit/BaiduMapAPI_Map.framework/Headers/*.h'
      map.resources = 'BaiduMapKit/BaiduMapAPI_Map.framework/Resources/mapapi.bundle'
      map.frameworks = 'BaiduMapAPI_Map'
      map.vendored_frameworks = 'BaiduMapKit/BaiduMapAPI_Map.framework'
      map.dependency 'BaiduMapKit/Base'
  end
  s.subspec 'Radar' do |radar|
      radar.source_files = 'BaiduMapKit/BaiduMapAPI_Radar.framework/Headers/*.h'
      radar.frameworks = 'BaiduMapAPI_Radar'
      radar.vendored_frameworks = 'BaiduMapKit/BaiduMapAPI_Radar.framework'
      radar.dependency 'BaiduMapKit/Base'
  end
  s.subspec 'Search' do |search|
      search.source_files = 'BaiduMapKit/BaiduMapAPI_Search.framework/Headers/*.h'
      search.frameworks = 'BaiduMapAPI_Search'
      search.vendored_frameworks = 'BaiduMapKit/BaiduMapAPI_Search.framework'
      search.dependency 'BaiduMapKit/Base'
  end
  s.subspec 'Utils' do |utils|
      utils.source_files = 'BaiduMapKit/BaiduMapAPI_Utils.framework/Headers/*.h'
      utils.frameworks = 'BaiduMapAPI_Utils'
      utils.vendored_frameworks = 'BaiduMapKit/BaiduMapAPI_Utils.framework'
      utils.dependency 'BaiduMapKit/Base'
  end
end
