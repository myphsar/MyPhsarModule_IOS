Pod::Spec.new do |s|
  s.name             = 'MyPhsarModule_IOS'
  s.version          = '1.0.2'
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
   
      'Frameworks/Release/App.xcframework',
      'Frameworks/Release/FlutterPluginRegistrant.xcframework',
      'Frameworks/Release/path_provider_foundation.xcframework',
      'Frameworks/Release/camera_avfoundation.xcframework',
	'Frameworks/Release/flutter_inappwebview_ios.xcframework',
	'Frameworks/Release/image_picker_ios.xcframework',
	'Frameworks/Release/OrderedSet.xcframework',
	'Frameworks/Release/permission_handler_apple.xcframework',
	'Frameworks/Release/share_plus.xcframework',
	'Frameworks/Release/shared_preferences_foundation.xcframework',
	'Frameworks/Release/url_launcher_ios.xcframework'

  ]
    # If you use specific Flutter plugins, add them as dependencies
    s.dependency 'Flutter'
  s.vendored_frameworks = '**/*.xcframework'
  # Fix 2: Add preserve_paths to help CocoaPods find files
  s.preserve_paths = 'Frameworks/**/*'
 
  # Fix 4: Add this to handle framework discovery
  s.pod_target_xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/MyPhsarModule_IOS/Frameworks/Release/**'
  }

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

 