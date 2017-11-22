Pod::Spec.new do |s|
    s.name             = 'Yodo1AdsAdmob'
    s.version          = '1.0.0'
    s.summary          = 'admob sdk v7.24.1'
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
                       DESC
    tags               = 'Yodo1Admob'
    s.homepage         = 'http://git.yodo1.cn'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'yixian huang' => 'huangyixian@yodo1.com' }
    s.source           = { :git => "https://github.com/8AGame/Yodo1Libs.git", :tag => 'Admob1.0.0' }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '8.0'

    s.source_files = tags + '/GoogleMobileAds.framework/Versions/A/**/*.h'

    s.public_header_files = tags + '/GoogleMobileAds.framework/Versions/A/Headers/*.h'

    s.preserve_path = 'ChangeLog.txt'

    s.requires_arc = true

    s.vendored_frameworks = tags + '/GoogleMobileAds.framework'

    s.frameworks = 'AudioToolbox', 'AVFoundation','CoreGraphics', 'CoreMedia','CoreMotion', 'CoreTelephony' ,'CoreVideo', 'GLKit','MediaPlayer', 'MessageUI', 'MobileCoreServices','OpenGLES', 'StoreKit' ,'SystemConfiguration'

    s.weak_frameworks = 'AdSupport','SafariServices','JavaScriptCore','WebKit'

    s.xcconfig = {
        "OTHER_LDFLAGS" => "-ObjC",
        "ENABLE_BITCODE" => "NO",
        "ONLY_ACTIVE_ARCH" => "NO"
    }
end
