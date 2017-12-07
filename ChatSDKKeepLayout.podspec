Pod::Spec.new do |s|
  s.name         = "ChatSDKKeepLayout"
  s.version      = "1.7.4"
  s.summary      = "Making Auto Layout easier to code."
  s.homepage     = "https://github.com/chat-sdk/KeepLayout"

  s.license      = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author       = 'Tricertops'

  s.source       = { :git => "https://github.com/chat-sdk/KeepLayout.git", :tag => "1.7.4" }

  s.requires_arc = true

  s.module_name = "KeepLayout"
  s.default_subspec = 'Swift'

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.0'

  s.subspec 'ObjC' do |op|
    op.source_files = 'Sources'
    op.exclude_files = 'Sources/*.{swift}'
    op.ios.deployment_target = '5.0'
    op.osx.deployment_target = '10.7'
    op.tvos.deployment_target = '9.0'
    op.ios.framework = 'UIKit'
    op.tvos.framework = 'UIKit'
    op.osx.framework = 'Cocoa'
    op.osx.exclude_files = 'Sources/UIViewController+KeepLayout.{h,m}', 'Sources/UIScrollView+KeepLayout.{h,m}'
  end
  s.subspec 'Swift' do |sp|
    sp.dependency 'ChatSDKKeepLayout/ObjC'
    sp.source_files = 'Sources/*.{swift}'
    sp.ios.deployment_target = '8.0'
    sp.osx.deployment_target = '10.9'
    sp.tvos.deployment_target = '9.0'
    sp.ios.framework = 'UIKit'
    sp.tvos.framework = 'UIKit'
    sp.osx.framework = 'Cocoa'
    sp.osx.exclude_files = 'Sources/UIViewController+KeepLayout.{h,m}', 'Sources/UIScrollView+KeepLayout.{h,m}'
  end
end
