Pod::Spec.new do |s|
    s.name              = 'Yodo1QQSDK'
    s.version           = '1.0.2'
    s.summary           = 'A short description of Yodo1QQSDK.'
    s.description       = <<-DESC
    TODO: Add long description of the pod here.
                       DESC
    tags                = "#{s.name}"                       
    s.homepage          = 'http://git.yodo1.cn/'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'yixian huang' => 'huangyixian@yodo1.com' }
    s.source           = { :git => "https://github.com/8AGame/Yodo1Libs.git", :tag => tags + "#{s.version}" }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '7.0'

    s.source_files = tags + '/TencentOpenAPI.framework/Headers/*.h'

    s.resources = tags + '/TencentOpenApi_IOS_Bundle.bundle'

    s.preserve_path = 'ChangeLog.txt'

    s.public_header_files = tags + '/TencentOpenAPI.framework/Headers/*.h'

    s.vendored_frameworks = tags + '/TencentOpenAPI.framework'


    s.xcconfig = {
        "OTHER_LDFLAGS" => "-ObjC",
        "ENABLE_BITCODE" => "NO",
        "ONLY_ACTIVE_ARCH" => "NO"
    }

    s.requires_arc = true

    s.frameworks = 'UIKit', 'Security','SystemConfiguration','CoreGraphics','CoreTelephony','ImageIO','CloudKit','GameKit'


    s.libraries = 'iconv','sqlite3.0','z','c++'

end
