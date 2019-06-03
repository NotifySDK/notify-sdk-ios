#import <Foundation/Foundation.h>

#import <NotifyCore/NTFConstants.h>
#import <NotifyCore/NTFMacros.h>

@protocol NTFVerifyApi;
@class UNNotificationResponse;

NS_ASSUME_NONNULL_BEGIN

NTF_EXTERN NSString * const NTF_LIBVERIFY_PUSH_DATA_KEY;
NTF_EXTERN NSString * const NTF_LIBVERIFY_ROOT_DATA_KEY;

@interface NTFVerify : NSObject

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

/*!
 Returns singleton instance of NTFVerificationApi
 */
+(nullable id<NTFVerifyApi>) getInstance;

/*!
 An application could provide two different kinds of behavior for sms code push notifications while
 it's in foreground.
 1. Do not call this function and add following code snippet into AppDelegate method (recommended):

 -(void)userNotificationCenter:(UNUserNotificationCenter *)center
         willPresentNotification:(UNNotification *)notification
           withCompletionHandler:(void (^)(UNNotificationPresentationOptions options))completionHandler{
       if ([NTFVerificationFactory isLibverifyPushData:notification.request.content.userInfo]) {
           completionHandler(UNNotificationPresentationOptionSound | UNNotificationPresentationOptionAlert);
       }
   }

 2. Call this method during an app initialization process. In this case libverify will show popup
    automatically, if an app still in foreground.
 */
+(void) showForegroundNotificationAsPopup;

/*!
 Allows to an application to simulate monitoring event from libverify.
 Note that, debug mode must be enabled first.
 @param eventWithParams provide YES to receive event with filled parameter mapping, otherwise - NO
 */
+(void) testMonitoringEvent:(BOOL) eventWithParams;

/*!
 Allows to an application to simulate error event from libverify.
 Note that, debug mode must be enabled first.
 @param fireException provide YES to receive an exception report, or NO to receive simulated error
 */
+(void) testUnhandledError:(BOOL) fireException;

@end

NS_ASSUME_NONNULL_END
