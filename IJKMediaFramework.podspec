Pod::Spec.new do |s|
  s.name = "IJKMediaFramework"
  s.version = "0.1.7"
  s.summary = "A short description of IJKMediaFramework."

  s.description = <<-DESC
  EZ组件
                       DESC

  s.homepage = "'https://github.com/cocoa1/IJKMediaFramework"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "cocoa1" => "@163.com" }
  s.source = { :git => "git@github.com:cocoa1/IJKMediaFramework.git", :tag => s.version.to_s }

  s.ios.deployment_target = "12.0"
  s.static_framework = true
  # s.swift_version = "5.2"
  # s.libraries = "c++"
  # s.requires_arc = true

  # s.source_files = "IJKMediaFramework/Classes/**/*"

  # s.prefix_header_contents = '#import "IJKMediaFrameworkPreHeader.h"'
  # s.resource_bundles = {
  #   "IJKMediaFramework" => ["IJKMediaFramework/Assets/*.xcassets"],
  # }

  s.pod_target_xcconfig = {
    "GCC_PREPROCESSOR_DEFINITIONS" => "$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1",
  }
  s.user_target_xcconfig = {
    "GCC_PREPROCESSOR_DEFINITIONS" => "$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1",
  }
  s.vendored_frameworks = 'IJKMediaFrameworkWithSSL.framework'

  s.libraries = 'bz2', 'z', 'c++'
  s.frameworks = 'AudioToolbox', 'AVFoundation', 'CoreGraphics', 'CoreMedia', 'CoreVideo',  'MediaPlayer', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'UIKit', 'VideoToolbox'


end
