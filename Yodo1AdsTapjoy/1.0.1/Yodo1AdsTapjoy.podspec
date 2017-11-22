Pod::Spec.new do |s|
    s.name             = 'Yodo1AdsTapjoy'
    s.version          = '1.0.1'
    s.summary          = '2017.6.29更新Tapjoy V11.11.0,解决屏幕适配的问题（UnityAds冲突）'
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
                       DESC
    tags               = 'Yodo1Tapjoy'
    s.homepage         = 'http://git.yodo1.cn/'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'yixian huang' => 'huangyixian@yodo1.com' }
    s.source           = { :git => "https://github.com/8AGame/Yodo1Libs.git", :tag => 'Tapjoy1.0.1' }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '7.0'

    s.source_files = tags + '/Tapjoy.framework/Versions/A/Headers/*.h'

    s.public_header_files = tags + '/Tapjoy.framework/Versions/A/Headers/*.h'

    s.resources = tags + '/Resources/*.*'
    
    s.preserve_path = 'ChangeLog.txt'
    
    s.vendored_frameworks = tags + '/Tapjoy.framework'

    s.requires_arc = false

    s.xcconfig = {
    'OTHER_LDFLAGS' => '-ObjC',
    'ENABLE_BITCODE' => 'NO',
    'ONLY_ACTIVE_ARCH' => 'NO'
    }

    s.frameworks = 'Accounts', 'AssetsLibrary','AVFoundation', 'CoreTelephony','CoreLocation', 'CoreMotion' ,'CoreMedia', 'EventKit','EventKitUI', 'iAd', 'ImageIO','MobileCoreServices', 'MediaPlayer' ,'MessageUI','MapKit','Social','StoreKit','Twitter','WebKit','SystemConfiguration','AudioToolbox','Security','CoreBluetooth'

    s.weak_frameworks = 'AdSupport','SafariServices','ReplayKit','CloudKit','GameKit'

    s.libraries = 'sqlite3.0','z','stdc++'
end
