# NotifySDK

Notify SDK is a solution for sending push notifications and verify user's phone number through sms/push/IVR. 

## Libraries

There are two independent libraries `Libnotify` and `Libverify`. They are based on a core library called `NotifyCore`. Also there is a library worked over `Libverify` and called `LibverifyControls`. All libraries are wrapped in dynamic frameworks.

### Libnotify

Lets you work with push notifications and send events. Developed for integration to main application, to ServiceExtension and to ContentExtension. 

### Libverify

Lets you verify user through Push Notifications or SMS. Developed for integration to main application and to ServiceExtension.

### LibverifyControls

Makes your work with Libverify more simple. Provides UI-solution for input phone number.

## Demo app

Will be presented soon.

## Checklist

Items from this list are required for correct integration of libraries to your application:

### Common

* enable framework and library(-ies) in config
* enable Debug-mode to receive debug-information (but don't forget to disable Debug-mode in the release)

### Libnotify

* setup application identifier, and application secret in config of Notify (application name is obsoleted)
* implement NTFNotifyDelegate protocol and install delegate to `[NTFNotify getInstance]`
* configure activity (read 'Activity Settings')
* create service extension and add library 'Notify' to it
* create content extension and add library 'Notify' to it

### Libverify

* setup application name and application id in config of Verify
* to test push notifications you can enable flag `useSandbox` in VerifyConfig. This property is setupable only through code and works with enabled debug mode only.
* create service extension and add library 'Verify' to it

### LibverifyControls

* Prepare localization:
  * Add string `phone-formatter-search-bar-title` with value `Search`  and `phone-formatter-navigationItem-title` with value `Country codes` accordingly to Localized.strings in main bundle.
  * **Or** you can implement method `configureCountriesCodesViewController:` of `NTFPhoneFormatterDelegate` and configure view controller before it will be presented.

## Installation

### Add libraries to project (with Cocoapods)

#### Add following lines into your project's Podfile to add Libnotify/Libverify libraries support:

##### Libnotify
```ruby
pod 'NotifySDK', 'x.x.x' # Please input specific version
```
or
```ruby
pod 'NotifySDK/Notify', 'x.x.x' # Please input specific version
```
##### Libverify with UI Components
```ruby
pod 'NotifySDK/VerifyControls', 'x.x.x' # Please input specific version
```
Or without ones if you want make your custom components
```ruby
pod 'NotifySDK/Verify', 'x.x.x' # Please input specific version
```

##### Install these libraries

* Run `pod install`
* Open workspace

##### Note

You need to add this libraries to all targets (for 'Notify' it's your app and service extension, and content extension; for 'Verify' it's your app and service extension)

### Add libraries to project (with Carthage)

Will be soon.

## Usage

* Create instance of `NTFAppConfig`
* Initialize framework with `NTFApp`
* Configure delegates
* Work with libraries

### Configuration

You can configure NotifySDK from code or creating config file in plist format. Under the hood library works with instance of NTFAppConfig.
Before initialization you can change this config.  But after initialization library reads current state and doesn't observe any changes.

#### Make config with Notify.plist

Both of our libraries must be configured before usage. The simplest way is make file Notify.plist. This file lets configure three parts: core (common properties), notify, verify.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
    <dict>
        <key>Enabled</key><!-- Enable or disable framework -->
        <true/>
        <key>Debug</key><!-- Enable or disable debug mode. You have to disable it in Release -->
        <true/>
        <key>LibNotify</key><!-- Configuration of Libnotify -->
        <dict>
            <key>Activity</key><!-- Configuration of activity in libnotify -->
            <dict>
                <key>Colors</key>
                <dict>
                    <key>DarkModeSupported</key><!-- Whether library should configure activity for dark mode or not -->
                    <true/>
                    <key>BackgroundColor</key>
                    <dict>
                        <key>Light</key>
                        <string>#70D05A</string>
                        <key>Dark</key>
                        <string>#70D05A</string>
                    </dict>
                    <key>TextColor</key>
                    <dict>
                        <key>Light</key>
                        <string>#70D05A</string>
                        <key>Dark</key>
                        <string>#70D05A</string>
                    </dict>
                    <key>AccentColor</key>
                    <dict>
                        <key>Light</key>
                        <string>#70D05A</string>
                        <key>Dark</key>
                        <string>#70D05A</string>
                    </dict>
                    <key>ButtonTextColor</key>
                    <dict>
                        <key>Light</key>
                        <string>#70D05A</string>
                        <key>Dark</key>
                        <string>#70D05A</string>
                    </dict>
                    <key>CloseButtonColor</key>
                    <dict>
                        <key>Light</key>
                        <string>#70D05A</string>
                        <key>Dark</key>
                        <string>#70D05A</string>
                    </dict>
                </dict>
                <!-- 
                    You can configure library to use custom fonts or dynamic fonts:
                        Static - enables default fonts and doesn't observe changes in system settings
                        Dynamic - uses default fonts as base font and changes size of font according to system settings
                        Custom - library asks fonts from host application. Library observes system settings and asks new fonts on change them.
                    Default fonts you can find in code.
                -->
                <key>FontType</key>
                <string>Static</string>
            </dict>
            <key>Landing</key><!-- Obsolete! Configuration of landing page -->
            <dict>
                <key>CloseButtonColor</key><!-- Color of button key -->
                <string>#70D05A</string>
                <key>ButtonTextColor</key><!-- Color of buttons text -->
                <string>#FFFFFF</string>
                <key>AccentColor</key><!-- Color of buttons and links -->
                <string>#70D05A</string>
                <key>TextColor</key><!-- Text color -->
                <string>#000000</string>
                <key>BackgroundColor</key><!-- Background color -->
                <string>#FFFFFF</string>
            </dict>
            <key>Enabled</key><!-- Enable or disable Libnotify -->
            <true/>
            <key>Application</key><!-- Libnotify parameters -->
            <dict>
                <key>Name</key><!-- Name of application -->
                <string>application name</string>
                <key>Id</key><!-- Identifier of application -->
                <string>application id</string>
                <key>Secret</key><!-- Secret of application -->
                <string>application secret</string>
            </dict>
        </dict>
        <key>LibVerify</key><!-- Configuration of Libverify -->
        <dict>
            <key>Enabled</key><!-- Enable/disable libverify -->
            <true/>
            <key>DirectPush</key>
            <false/>
            <key>Application</key><!-- Libverify parameters -->
            <dict>
                <key>Name</key>
                <string>application name</string><!-- Application name -->
                <key>Key</key>
                <string>application secret</string><!-- Application key -->
            </dict>
        </dict>
        <key>SharedGroupId</key><!-- Shared group ID. You have to copy group identifier from Entitlements -->
        <string>shared group identifier</string>
    </dict>
</plist>
```

This configuration file must be added to the application bundle. If you have ServiceExtension or ContentExtension you have to add Notify.plist to the bundle of this extensions as well.

*You can find example* ***Notify.plist*** *in directory with pod or in archive with frameworks.*

*Some properties can be setup through code only. It was made for critical properties that are dangerous and require more attention.*

#### Other ways

* You may create empty configuration in code with string `[NTFAppConfig emptyConfig]` and then setup required parameters. But take attention and read comments in API.

* At last, you can load default configuration from Notify.plist using method `[NTFAppConfig defaultConfig]` and then change it.

### Initialization framework

For initialize framework you need to use class `NTFApp`. Methods for initialize framework in application and extensions are different.

Method `[NTFApp initWithDefaultConfigAndEventsReceiver:]` lets you initialize framework for application with configuration loaded from file `Notify.plist`.

Method `[NTFApp initExtensionWithDefaultConfigAndEventsReceiver:]` lets you initialize framework for application's extensions with configuration loaded from file `Notify.plist`.

Methods `[NTFApp initWithConfig:withEventsReceiver:]` and `[NTFApp initExtensionWithConfig:withEventsReceiver:]` initialize framework for application and extensions accordingly with custom config.

**After initialize framework you cannot change configuration**

#### Features

##### GDRP

Libnotify supports GDPR. You can enable or disable sending VendorID and WiFi information to server. To configure GDPR you need use `-[[NTFNotify getInstance] setDeviceIdTrackingEnabled:boolValue]`

#### Tips

* If you want to use few configurations you may create configuration files for each configuration, load required with `[NTFAppConfig initWithConfig:]` and initialize framework with this configuration. 

* Another way is reading base configuration from file and changing it.

### Initialization Libnotify

If you configure libnotify for work in main application (not in extension) you have to configure delegate for libnotify.
`[NTFNotify getInstance] setDelegate:<you implementation of protocol NTFNotifyDelegate>]`.

It lets you handle some messages from libnotify including opening main interface for user. We can get corresponding request from user but we cannot predict the structure of your application.

#### Features

##### Dark-mode support

Library Notify can work with dark mode. If your application supports dark-mode you can enable property **activitySettings.colorSettings.darkModeSupported**. But please don't forget configure right colors.

##### Dynamic font support

Library allows to configure fonts in activity. You can use static fonts (by default), use dynamic fonts based on system fonts or you can configure custom fonts.
To do this you have to set property **activitySettings.fontType** to **Custom** and implement few methods in NotifyDelegate. 
After that library will asks fonts from your application. Also library observes changes in system settings and asks right fonts every time system settings changed. 

### Localization

#### Libverify

If your application supports change language you can configure Libverify's localization by setup property `languageCode` with two-symbols code defined in ISO 630-1.

#### LibverifyControls

You can implement method `configureCountriesCodesViewController:` of `NTFPhoneFormatterDelegate` and setup appropriate values to properties `controllerTitle` and `searchPlaceholder` at instance of `NTFPhoneCountriesCodesViewController`. Also you need to setup property `currentLocale` of `NTFPhoneCountriesCodesViewController` for correct localization of country names and button "Done". 

## Technical notes

### Modal interfaces

We open landing interface in libnotify and message settings interface in libverify in separate window. It helps us present required interfaces saving view controllers stack of main application. But sometimes we mark our window as key. Due to this circumstance you can get invalid behaviour if you try to find main window of your application with `keyWindow` method.

## Attention

Next recommendations will help you to avoid incorrect behaviour

1. Try to don't get access to your main window using method `[[UIApplication sharedApplication] keyWindow]`. For details look at Technical notes above.

## Requirements

iOS 9.0

## Known Issues

* (iOS 9.*): APNS pushes delivered to active application will be rejected and library will send event PushStatus with value Failed.REJECTED_IOS9_FOREGROUND.  It's because of library doesn't contains tools to show incoming pushes inside application.

## License

LGPL
