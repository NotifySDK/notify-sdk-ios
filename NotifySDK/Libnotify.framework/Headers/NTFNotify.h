#import <Foundation/Foundation.h>

#import <NotifyCore/NTFMacros.h>
#import <NotifyCore/NTFConstants.h>

@class UIApplication;
@class UNNotificationResponse;
@class UNNotificationRequest;
@class UNNotification;

@protocol NTFNotifyApi;
@protocol NTFNotifyExtensionApi;
@protocol NTFContentExtensionDelegate;

/**
 * Defines first child of {@link NTF_LIBNOTIFY_ROOT_DATA_KEY}, that contains all notification
 * content sent from Notify API.
 * */
NTF_EXTERN NSString *const NTF_LIBNOTIFY_PUSH_DATA_KEY;

/**
 * Defines top level json object of notification content sent from Notify API.
 * */
NTF_EXTERN NSString *const NTF_LIBNOTIFY_ROOT_DATA_KEY;

NS_ASSUME_NONNULL_BEGIN

@interface NTFNotify : NSObject

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

/**
 * Returns singleton instance of NTFNotifyApi
 * */
+(nullable id<NTFNotifyApi>) getInstance;

/**
 * Returns singleton NTFNotifyExtensionApi instance. This extension api may be used from an application
 * content or service extensions to enable images in libnotify push notifications and more reliable
 * delivery confirmation logic.
 * */
+(nullable id<NTFNotifyExtensionApi>) getExtensionInstance;

/**
 * Shows libnotify debug view with buttons to query instance properties.
 * */
+(void) showDebugSettings;

/**
 * Allows an application content extension to query provided big content (image/video)
 * for a notification. In most cases all necessary content will be already downloaded by service
 * extension, so this method work very fast.
 * @param notification original notification object
 * @param delegate to be called during content retrieval process
 *
 * @returns YES - if this particular notification originated from libnotify API, valid and
 * will be processed in libnotify, otherwise - NO (in this case other libnotify internal
 * logic and threads will be not initialized).
 * */
+(BOOL) requestNotificationExtensionContent:(UNNotification *)notification
                               withDelegate:(id<NTFContentExtensionDelegate>) delegate API_AVAILABLE(ios(10.0));

@end

NS_ASSUME_NONNULL_END
