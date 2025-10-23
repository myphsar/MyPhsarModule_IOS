Pod::Spec.new do |s|
  s.name             = 'MyPhsarModule_IOS'
  s.version          = '1.0.0'
  s.summary          = 'A Flutter module for iOS'
  s.description      = <<-DESC
  This module provides Flutter functionality to native iOS apps.
                       DESC
  s.homepage         = 'https://github.com/myphsar/MyPhsarModule_IOS'
  s.license          = { :type => 'MIT', :file => '/Users/sak/Documents/MyPhsarModule_IOS/LICENSE' }
  s.author           = { 'Sam Piksak' => 'connecttopiksak@gmail.com' }
  
  s.swift_versions = ['5.0']
  s.ios.deployment_target = '15.0'
  s.source           = { 
    :git => 'https://github.com/myphsar/MyPhsarModule_IOS.git',
    :tag => s.version.to_s 
  }

  s.vendored_frameworks = [
      'Flutter.xcframework',
      'App.xcframework',
      'FlutterPluginRegistrant.xcframework',
      'path_provider_foundation.xcframework',
      'camera_avfoundation.xcframework',
	'flutter_inappwebview_ios.xcframework',
	'image_picker_ios.xcframework',
	'OrderedSet.xcframework',
	'permission_handler_apple.xcframework',
	'share_plus.xcframework',
	'shared_preferences_foundation.xcframework',
	'url_launcher_ios.xcframework'

  ]
    # If you use specific Flutter plugins, add them as dependencies
    s.dependency 'Flutter'
  

  # Make sure the pod is validated correctly
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',

    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',

  }

  # Verify the source is accessible
  s.prepare_command = <<-CMD
    echo "Validating MyFlutterModule #{s.version}"
  CMD
end

 