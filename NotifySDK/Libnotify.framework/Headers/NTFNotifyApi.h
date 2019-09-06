#import <Foundation/Foundation.h>
#import <UIKit/UIApplication.h>

/*!
 States for notifications

 - NTFNotificationStateEnabled: All notifications are enabled (by default)
 - NTFNotificationStateDisabled: All notifications are disabled
 - NTFNotificationStateOnlyTransactions: Only notifications "on request" are enabled
 */
typedef NS_ENUM(NSInteger, NTFNotificationState) {
    NTFNotificationStateEnabled = 0,
    NTFNotificationStateDisabled,
    NTFNotificationStateOnlyTransactions
};

NS_ASSUME_NONNULL_BEGIN

@protocol NTFNotifyDelegate;

/*!
 {@link NTFNotifyApi} is the main libnotify interface which provides all functionality for
 application event tracking. All interface methods are designed to be maximally
 lightweight as possible and asynchronous as well. So, they can be called from an arbitrary
 application thread, including <b>MainThread</b>.
 */
@protocol NTFNotifyApi <NSObject>

/*!
 Allows to bind some user id to a particular libnotify (application) instance, which could
 be used to send notifications.
 @param userId email, phone or other unique user id
 */
-(void) setUserId:(nullable NSString *) userId;

/*!
 State of notifications
 */
@property (nonatomic, assign) NTFNotificationState notificationState;

/*!
 Set delegate for libnotify.

 @param delegate Object that will handle various events from libnotify
 */
-(void) setDelegate:(nullable id<NTFNotifyDelegate>)delegate;

/*!
 Works like an alias for a method {@link NTFNotificationApi#collectEvent(NSString, NSObject)}.
 @param key event key
 @param value event value
 */
-(void) collectEvent:(NSString *) key withValue:(NSString *) value;

/*!
 Works as method {@link NTFNotificationApi#collectEvent(NSString, NSString)}, but allows to
 an application deliver collected events as soon as possible.
 @param key event key
 @param value event value
 @param deliverImmediately YES - if an application wishes to deliver this event as soon as possible,
 NO - otherwise
 */
-(void) collectEvent:(NSString *) key
           withValue:(NSString *) value
  withImmediateLogic:(BOOL) deliverImmediately;

/*!
 Collects single event without a value
 @param key event key
 */
-(void) collectEvent:(NSString *) key;

/*!
 Works as method {@link NTFNotificationApi#collectEvent(NSString)}, but allows to
 an application deliver collected events as soon as possible.
 @param key event key
 @param deliverImmediately YES - if an application wishes to deliver this event as soon as possible,
 NO - otherwise
 */
-(void) collectEvent:(NSString *) key
  withImmediateLogic:(BOOL) deliverImmediately;

/*!
 Collects single event with a value. Value could could have any type and in most cases
 it will be turned into <b>NSString</b> and passed into libnotify API, but there are some
 important corner cases. If the value of type <b>NSNumber</b> passed into
 this (or other interface) method, libnotify will accumulate it's values and pass into libnotify API
 an aggregated value.

 For instance:
 @code
 NTFNotificationApi.collectEvent(@"test", @(1));
 NTFNotificationApi.collectEvent(@"test", @(2));
 NTFNotificationApi.collectEvent(@"test", @(3));
 @endcode

 The call sequence above will result in libnotify call with something like:
 @code
 {
 "name" : "test",
 "count" : 3,
 "first_timestamp" : 123123123,
 "last_timestamp" : 2131231231,
 "max" : 3,
 "min" : 1,
 "sum" : 6
 }
 @endcode

 This is really useful if you want to use some time or performance metrics to segment
 your application auditory into slices.

 Another case:

 @code
 NTFNotificationApi.collectEvent(@"test", @"some");
 NTFNotificationApi.collectEvent(@"test", @"some");
 NTFNotificationApi.collectEvent(@"test", @"some");
 @endcode

 The call sequence above will result in libnotify call with something like:

 @code
 {
 "name" : "test",
 "value" : "some"
 "count" : 3,
 "first_timestamp" : 123123123,
 "last_timestamp" : 2131231231
 }
 @endcode

 Thus, libnotify uses internal logic for gluing events that has been produced originated
 in some short period of time, which allows decrease client to server traffic
 and increase server throughput.
 @param key event key
 @param value event value
 */
-(void) collectEvent:(NSString *) key withValueObject:(NSObject *) value;

/*!
 Works as method {@link NTFNotificationApi#collectEvent(NSString, NSObject)}, but allows to
 an application deliver collected events as soon as possible.
 @param key event key
 @param value event value
 @param deliverImmediately YES - if an application wishes to deliver this event as soon as possible,
 NO - otherwise
 */
-(void) collectEvent:(NSString *) key
     withValueObject:(NSObject *) value
  withImmediateLogic:(BOOL) deliverImmediately;

/*!
 Collects multiple events in a single method call. It is preferable way to deliver several
 events with some values to libnotify SDK.
 @param mapping between event name and it's value
 */
-(void) collectEventMap:(NSDictionary<NSString *, NSObject *> *) mapping;

/*!
 Works as method {@link NTFNotificationApi#collectEvent(NSDictionary)}, but allows to
 an application deliver collected events as soon as possible.
 @param mapping between event name and it's value
 @param deliverImmediately YES - if an application wishes to deliver this event as soon as possible,
 NO - otherwise
 */
-(void) collectEventMap:(NSDictionary<NSString *, NSObject *> *) mapping
     withImmediateLogic:(BOOL) deliverImmediately;

/*!
 Sets named property for this particular instance. Unlike events collected using
 one of methods like {@link NTFNotificationApi.collectEvent(NSString)}, notify API will keep
 track only for the last value for each property.
 @param key property key
 @param value property value
 */
-(void) setProperty:(NSString *) key withValueObject:(NSObject *) value;

/*!
 Works as method {@link NTFNotificationApi#setProperty(NSString, NSObject)}, but allows to
 an application deliver set up properties with their values as soon as possible.
 @param key property key
 @param value property value
 @param deliverImmediately YES - if an application wishes to deliver this property
 as soon as possible, NO - otherwise
 */
-(void) setProperty:(NSString *) key
    withValueObject:(NSObject *) value
 withImmediateLogic:(BOOL) deliverImmediately;

/*!
 Allows to pass device push token to libnotify API. Use unchanged value received from AppDelegate
 callback.
 @param deviceToken device push token
 */
-(void) updatePushRegistrationId:(NSData *) deviceToken;

/*!
 An application could call this method to obtain libnotify instance_id, which could be used to
 send push notifications directly to this particular instance via notify.mail.ru API.
 @returns libnotify instance_id
 */
-(NSString *) getInstanceId;

/*!
 Allows to clear all libnotify cached push notification content.
 */
-(void) clearCache;

// MARK: - Deprecated methods

/*!
 @deprecated after version 1.0.5
 Set the window level of presentation landing.

 Due to the landing is shown in separate window you may
 want to set the different level of this window. By default
 window level is UIWindowLevelStatusBar - 1.

 @param landingWindowLevel may be any new value or nil if you want to reset this value.
 */
-(void) setLandingWindowLevel:(nullable NSNumber *)landingWindowLevel DEPRECATED_MSG_ATTRIBUTE("use modalWindowLevel in NTFAppConfig instead.");

@end

NS_ASSUME_NONNULL_END
