Pod::Spec.new do |s|
    s.name             = 'NotifySDK'
    s.version          = '1.7.0'
    s.summary          = 'Libnotify and Libverify libraries.'
    
    s.description      = <<-DESC
    Client SDK for Notify Mail.ru service.
    DESC
    
    s.homepage         = 'https://notify.mail.ru'
    s.license          = { :type => 'LGPL-3.0', :file => 'NotifySDK/LICENSE' }
    s.author           = { 'Notify Mail.ru' => 'libverify@corp.mail.ru' }
    s.source           = { :git => 'https://github.com/NotifySDK/notify-sdk-ios.git', :tag => 'v1.7.0' }
    s.ios.deployment_target = '9.0'
    
    s.default_subspec  = ['Core', 'Notify']
    
    s.subspec 'Core' do |sp|
        sp.vendored_frameworks = 'NotifySDK/NotifyCore.framework'
    end
    
    s.subspec 'Notify' do |sp|
        sp.dependency 'NotifySDK/Core'
        sp.vendored_frameworks = 'NotifySDK/Libnotify.framework'
        sp.resources = ['NotifySDK/Libnotify.framework/LibnotifyResources.bundle']
    end
    
    s.subspec 'Verify' do |sp|
        sp.dependency 'NotifySDK/Core'
        sp.vendored_frameworks = 'NotifySDK/Libverify.framework'
        sp.resources = ['NotifySDK/Libverify.framework/LibverifyResources.bundle']
    end
    
    s.subspec 'VerifyControls' do |sp|
        sp.dependency 'NotifySDK/Core'
        sp.dependency 'NotifySDK/Verify'
        sp.vendored_frameworks = 'NotifySDK/LibverifyControls.framework'
    end
end
