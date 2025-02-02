Pod::Spec.new do |s|
	s.name                  = "FlavianSipTest"
	s.version               = "1.0.0"
	s.summary               = "PJSIP 2.13 for iOS"
	s.description           = "Pod for distributing PJSIP 2.13 wrapped in a framework. With Opus, OpenSSL and openh264."
	s.homepage              = "https://www.keepcalling.com"

	s.license               = { :type => "GNU GPLv3", :file => "LICENSE" }
	s.author                = { "Devhouse Spindle" => "opensource@wearespindle.com" }

	s.source                = { :git => "https://github.com/flaviankeepcalling/Vialer-pjsip-iOS.git", :tag => s.version.to_s }

	s.platform              = :ios, "11.0"
	s.requires_arc          = false

	s.preserve_paths        = "VialerPJSIP.framework/*"
	s.public_header_files   = "VialerPJSIP.framework/Versions/A/Headers/**/*.{h,hpp}"
	s.source_files		    = "VialerPJSIP.framework/Versions/A/Headers/**/*.{h,hpp}"
	s.vendored_frameworks   = "VialerPJSIP.framework"

	s.pod_target_xcconfig = { 'ONLY_ACTIVE_ARCH' => 'YES' }
	s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

	s.libraries 			= 'stdc++'
	s.frameworks            = "AudioToolbox", "AVFoundation", "CFNetwork",  "CoreMedia"
	s.xcconfig = {
        'GCC_PREPROCESSOR_DEFINITIONS' => 'PJ_AUTOCONF=1',
	}
end

