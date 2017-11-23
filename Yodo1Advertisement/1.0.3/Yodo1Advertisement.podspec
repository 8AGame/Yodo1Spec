Pod::Spec.new do |s|
    s.name             = 'Yodo1Advertisement'
    s.version          = '1.0.3'
    s.summary          = '2017.11.22 Yodo1Ads v1.0.1'
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
                       DESC
    tags               = 'Yodo1Ads'
    s.homepage         = 'http://git.yodo1.cn/'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'yixian huang' => 'huangyixian@yodo1.com' }
    s.source           = { :git => "https://github.com/8AGame/Yodo1Libs.git", :tag => 'Yodo1Ads1.0.3' }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '8.0'

    s.source_files = tags + '/Yodo1UnityTool/*.{h,mm}',tags + '/*.h'

    s.public_header_files = tags + '/Yodo1UnityTool/*.h',tags + '/*.h'

    #s.resources = tags + '/*.*'
    
    s.preserve_path = 'ChangeLog.txt'
    
    s.vendored_libraries = tags + '/*.a'

    s.requires_arc = false

    s.xcconfig = {
    'OTHER_LDFLAGS' => '-ObjC',
    'ENABLE_BITCODE' => 'NO',
    'ONLY_ACTIVE_ARCH' => 'NO'
    }

    s.frameworks = 'Accounts', 'AssetsLibrary','AVFoundation', 'CoreTelephony','CoreLocation', 'CoreMotion' ,'CoreMedia', 'EventKit','EventKitUI', 'iAd', 'ImageIO','MobileCoreServices', 'MediaPlayer' ,'MessageUI','MapKit','Social','StoreKit','Twitter','WebKit','SystemConfiguration','AudioToolbox','Security','CoreBluetooth'

    s.weak_frameworks = 'AdSupport','SafariServices','ReplayKit','CloudKit','GameKit'

    s.libraries = 'sqlite3.0','z','stdc++'
    
    s.dependency 'Yodo1AdsChance'
    s.dependency 'Yodo1AdsAdColony'
    s.dependency 'Yodo1AdsApplovin'
    s.dependency 'Yodo1AdsAdmob'
    s.dependency 'Yodo1AdsGDTMob'
    s.dependency 'Yodo1AdsCentrixlink'
    s.dependency 'Yodo1AdsInmobi'

    s.dependency 'Yodo1AdsKTplay'
    s.dependency 'Yodo1AdsFacebook'
    s.dependency 'Yodo1AdsInmobi'
    s.dependency 'Yodo1AdsMobvista'
    s.dependency 'Yodo1AdsSupersonic'
    s.dependency 'Yodo1AdsAdview'
    s.dependency 'Yodo1AdsChartboost'

    s.dependency 'Yodo1AdsTapjoy'
    s.dependency 'Yodo1AdsUMAdSDK'
    s.dependency 'Yodo1AdsUnityAds'
    s.dependency 'Yodo1AdsVungle'
    s.dependency 'Yodo1AdsYouMi'

end
