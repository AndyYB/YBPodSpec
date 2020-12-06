#
# Be sure to run `pod lib lint YBStockData.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YBStockData'
  s.version          = '0.1.1'
  s.summary          = 'A short description of YBStockData.'
  s.description      = <<-DESC
  A Module copy YBStockData
  DESC

  s.homepage         = 'https://github.com/AndyYB/YBStockData'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AndyYB' => 'caoyanbin0426@sina.com' }
  s.source           = { :git => 'https://github.com/AndyYB/YBStockData.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.static_framework = true
  s.default_subspec = 'Core'
  s.swift_version = '5.1'
  
  s.subspec 'AiModel' do |aiModel|
      aiModel.source_files = 'YBStockData/Classes/AiModel/**/*.*'
      aiModel.resource_bundles = {
          'YBStockData' => ['YBStockData/Assets/Core/Resource/*.*']
      }
  end
  
  s.subspec 'YBKit' do |ybKit|
      ybKit.source_files = 'YBStockData/Classes/YBKit/**/*.*'
      ybUiKit.resource_bundles = {
          'YBStockData' => ['YBStockData/Assets/Core/Resource/*.*']
      }
  end
  
  s.subspec 'YBUIKit' do |ybUiKit|
      ybUiKit.source_files = 'YBStockData/Classes/YBUIKit/**/*.*'
      ybUiKit.resource_bundles = {
          'YBStockData' => ['YBStockData/Assets/Core/Resource/*.*']
      }
  end
  
  s.subspec 'YBLogin' do |ybLogin|
      ybLogin.source_files = 'YBStockData/Classes/YBLogin/**/*.*'
      ybLogin.resource_bundles = {
          'YBStockData' => ['YBStockData/Assets/Core/Resource/*.*']
      }
  end
  
  s.subspec 'YBNumberMoney' do |ybNumberMoney|
     ybNumberMoney.source_files = 'YBStockData/Classes/YBNumberMoney/**/*.*'
     ybNumberMoney.resource_bundles = {
         'YBStockData' => ['YBStockData/Assets/Core/Resource/*.*']
      }
  end
  
  s.subspec 'Core' do |core|
      core.source_files = 'YBStockData/Classes/Core/**/*.swift'
      core.resource_bundles = {
          'YBStockData' => ['YBStockData/Assets/Core/Resource/*.*']
      }
      s.dependency 'ObjectMapper'
      s.dependency 'Alamofire'
      s.dependency 'RealmSwift'
      s.dependency 'CSV.swift'
      s.dependency 'SnapKit'
      s.dependency 'SDWebImage'
      s.dependency 'RxSwift'
      s.dependency 'RxCocoa'
  end
  
end
