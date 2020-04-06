#import <Foundation/Foundation.h>

#import <NotifyCore/NTFConstants.h>

NS_ASSUME_NONNULL_BEGIN

NTF_EXTERN NSString * const LIBVERIFY_DIRECT_PUSH_RECEIVED;

/**
 Push notification data container. An application should subscribe for LIBVERIFY_DIRECT_PUSH_RECEIVED event
 using NSNotificationCenter mechanism to receive this object. Libverify doesn't hold this object (nor it's data) in any way,
 so feel free to do with it what your application business logic requires.
 */
@protocol NTFDirectPushData
/**
 Any content that needs to be passed to an application. Could be provided in arbitrary format.
 */
@property (nonatomic, copy, readonly, nullable) NSString* payload;
/**
 In case if 'payload' field contains valid json data, this field will hold json object ready for querying.
 */
@property (nonatomic, copy, readonly, nullable) NSDictionary* jsonPayload;
/**
 Contains source service, which was passed as a parameter into libverify API.
 */
@property (nonatomic, copy, readonly, nullable) NSString* from;
/**
 Contains unique push message id, which was generated in libverify backend during the API call.
 */
@property (nonatomic, copy, readonly) NSString* pushId;
/**
 Shows whether this notification was originated directly from server push notification or after user toast activation.
 true - if user has been activated an application by clicking on a notification toast in notification center
 false - for content-available=1 push notification that has been delivered in background
 */
@property (nonatomic, readonly) BOOL activated;

@end

NS_ASSUME_NONNULL_END
