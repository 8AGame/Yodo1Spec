Pod::Spec.new do |s|
    s.name             = 'Yodo1AdsGDTMob'
    s.version          = '1.0.0'
    s.summary          = '广点通sdk v4.6.2'
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
                       DESC
    tags               = 'Yodo1GDTMob'
    s.homepage         = 'https://github.com/yixian huang/Yodo1GDTMob'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'yixian huang' => 'huangyixian@yodo1.com' }
    s.source           = { :git => "https://github.com/8AGame/Yodo1Libs.git", :tag => 'GDTMob1.0.0' }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '7.0'

    s.source_files = tags + '/*.h'

    s.public_header_files = tags + '/*.h'

    s.preserve_path = 'ChangeLog.txt'

    s.vendored_libraries = tags + '/*.a'

    s.frameworks = 'Accounts', 'AssetsLibrary','AVFoundation', 'CoreTelephony','CoreLocation', 'CoreMotion' ,'CoreMedia', 'EventKit','EventKitUI', 'iAd', 'ImageIO','MobileCoreServices', 'MediaPlayer' ,'MessageUI','MapKit','Social','StoreKit','Twitter','WebKit','SystemConfiguration','AudioToolbox','Security','CoreBluetooth'

    s.weak_frameworks = 'AdSupport','SafariServices','ReplayKit','CloudKit','GameKit'

    s.libraries = 'sqlite3', 'z', 'stdc++','xml2'

    s.requires_arc = true

    s.xcconfig = {
        "OTHER_LDFLAGS" => "-ObjC",
        "ENABLE_BITCODE" => "NO",
        "ONLY_ACTIVE_ARCH" => "NO"
    }

end
