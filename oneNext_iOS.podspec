Pod::Spec.new do |s|
  s.name = 'oneNext_iOS'
  s.version = '1.0.3'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.platform = :ios
  s.summary = 'OneNext iOS SDK'
  s.homepage = 'https://github.com/Marqueurs/oneNext_iOS'
  s.authors = { 'Support' => 'assistance.acpm@gmail.com' }
  s.source = { :git => 'https://github.com/Marqueurs/oneNext_iOS.git', :tag => s.version }
  s.ios.deployment_target = '8.0'
  s.pod_target_xcconfig = { 'OTHER_CFLAGS' => '-fembed-bitcode' }
  s.ios.vendored_frameworks = 'oneNext_iOS.framework'
end
