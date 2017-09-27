Pod::Spec.new do |s|
  s.name             = 'Draven'
  s.version          = '0.1.0'
  s.summary          = 'ABTest and agile tool written in Swift to help developers deliver safely new features.'

  s.description      = <<-DESC
Draven is an ABTest and agile tool created to help developers deliver safely new features.
The idea is to make it possible to toggle features and control percentage of ABTesting remotely.
                       DESC

  s.homepage         = 'https://github.com/nabilsafatli/Draven'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Nabil Safatli' => 'safatli.nabil@gmail.com' }
  s.source           = { :git => 'https://github.com/nabilsafatli/Draven.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/nabil_safatli'

  s.ios.deployment_target = '8.0'
  
  s.source_files = 'Draven/Classes/**/*'
end
