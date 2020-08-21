#import <Foundation/Foundation.h>

#import <NotifyCore/NTFNotifyConfig.h>

NS_ASSUME_NONNULL_BEGIN

@interface NTFVerifyConfig: NSObject <NSCopying>

/*!
 Initializer of this class is private.
 You can get instance of this class from NTFAppConfig through property `verifyConfig`
 */
+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

/*!
 isEnabled is a calculated getter. It returns true only if instance variable _enabled = true and appName is filled (not empty) and appKey is filled
 */
@property (nonatomic, getter=isEnabled) bool enabled;
@property (nonatomic, copy, nullable) NSString *appName;
@property (nonatomic, copy, nullable) NSString *appKey;
@property (nonatomic, assign) bool supportDirectPush;

/**
 Please enable this flag only if you know what you do.
 Be sure that your UI is prepared to work with routes.
 */
@property (nonatomic, assign) bool useCallUIRoute;

/*!
 This flag enables or disables usage sandbox API and sandbox APNS hosts for libverify.
 As a protection, it will work only with enabled debug mode. Else this flag will be ignored.
 */
@property (nonatomic, assign) BOOL useSandbox;

@end


@interface NTFAppConfig : NSObject <NSCopying>

/*!
 This method generates empty config. Before use it you should fill required parameters
 and configure at least one application (libnotify or libverify).
 */
+ (nonnull instancetype)emptyConfig;

/*!
 This method reads file Notify.plist from main bundle and returns config. If file isn't exists
 this method returns nil. You can change any parameters in this config without saving to
 source file.
 */
+ (nullable instancetype)defaultConfig;

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

/*!
 Returns whether config loaded from file or nil if file isn't exist.
 @param pathToConfig is a path to .plist file
 */
- (nullable instancetype)initWithConfig:(NSString *)pathToConfig;

/*!
 Global settings
 */

/*!
 isEnabled returns true only if enabled is true and notifyConfig or verifyConfig return true on isEnabled
 */
@property (nonatomic, getter=isEnabled) bool enabled;

/*!
 This flag enables or disables verbose mode. If it's enabled library will write
 detailed information in log.
 */
@property (nonatomic, getter=isDebug) bool debug;

/*!
 Identifier of one of shared groups from entitlements file.
 This parameter is required for correct work of extensions.
 */
@property (nonatomic, copy, nullable) NSString *sharedGroupId;

/*!
 Modal interfaces of libverify and libnotify are presented in separate windows.
 By default the property windowLevel of these windows has value UIWindowLevelStatusBar - 1.
 But you can change this window level and set required value.
 Now we support static level only. You cannot change this value after initialization of libraries.
 When modal windows are presented they become key window (it's essential requirement)
 therefore you need to check that you handle this case correctly.
 */
@property (nonatomic, nullable) NSNumber *modalWindowLevel;

/*!
 Config of libnotify
 */
@property (nonatomic, readonly) NTFNotifyConfig *notifyConfig;

/*!
 Config of libverify.
 */
@property (nonatomic, readonly) NTFVerifyConfig *verifyConfig;

@end

NS_ASSUME_NONNULL_END
