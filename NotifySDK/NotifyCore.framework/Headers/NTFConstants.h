#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>

#import <NotifyCore/NTFMacros.h>

@class UNNotificationContent;

/**
 * Alias for void function with argument of type @{link UIBackgroundFetchResult}.
 * */
typedef void (^NTFBackgroundFetchCallback)(UIBackgroundFetchResult);
/**
 * Alias for void function without arguments.
 * */
typedef void (^NTFCallBack)(void);

/**
 * Alias for function that will handle modified content from service extension.
 * */
API_AVAILABLE(ios(10.0))
typedef void (^NTFServiceExtensionCallback)(UNNotificationContent * _Nonnull);

/**
 * Alias for callback from AppDelegate
 * */
API_AVAILABLE(ios(10.0))
typedef void (^NTFAppForegroundCallback)(UNNotificationPresentationOptions options);

/**
  The error domain for all errors from notify-core, libverify, libnotify SDKs.
 */
NTF_EXTERN NSString *const NTFErrorDomain;

/**
 NS_ENUM(NSInteger, NTFErrorCode)
  Error codes for NTFErrorDomain.
 */
typedef NS_ENUM(NSInteger, NTFErrorCode)
{
    /**
      NO ERROR.
     */
    NTFEmptyErrorCode = 0,
    NTFErrorArgumentErrorCode = 1,
    NTFNetworkCancelledErrorCode = 2,
    NTFNetworkClientErrorCode = 3,
    NTFNetworkGeneralErrorCode = 4,
    NTFNetworkJsonParseErrorCode = 5,
    NTFNetworkJsonSerializeErrorCode = 6,
    NTFNetworkIOErrorCode = 7,
    NTFEventsDbErrorCode = 8,
    NTFNetworkServerErrorErrorCode = 9,
    NTFNetworkNoDataToSendErrorCode = 10,
    NTFUIRenderingErrorErrorCode = 11
};

/*
 @method group error userInfo keys
 */

/**
  The userInfo key SDK type.

  Could have any value from {NTFCoreSDKType, NTFLibverifySDKType, NTFLibnotifySDKType}.
 */
NTF_EXTERN NSString *const NTFSDKTypeKey;

/**
  The userInfo value for key NTFSDKTypeKey.

  An error has been generated by notify-core SDK.
 */
NTF_EXTERN NSString *const NTFCoreSDKType;
/**
  The userInfo value for key NTFSDKTypeKey.

  An error has been generated by libverify SDK.
 */
NTF_EXTERN NSString *const NTFLibverifySDKType;
/**
  The userInfo value for key NTFSDKTypeKey.

  An error has been generated by libnotify SDK.
 */
NTF_EXTERN NSString *const NTFLibnotifySDKType;

/**
  The userInfo key for the invalid collection for errors with NTFInvalidArgumentErrorCode.

 If the invalid argument is a collection, the collection can be found with this key and the individual
 invalid item can be found with NTFErrorArgumentValueKey.
 */
NTF_EXTERN NSString *const NTFErrorArgumentCollectionKey;

/**
  The userInfo key for the invalid argument name for errors with NTFInvalidArgumentErrorCode.
 */
NTF_EXTERN NSString *const NTFErrorArgumentNameKey;

/**
 The userInfo key for the invalid argument value for errors with NTFInvalidArgumentErrorCode.
 */
NTF_EXTERN NSString *const NTFErrorArgumentValueKey;

/**
  The userInfo key for the message for developers in NSErrors that originate from the SDK.
  The developer message will not be localized and is not intended to be presented within the app.
 */
NTF_EXTERN NSString *const NTFErrorDeveloperMessageKey;

/**
  The userInfo key describing a localized description that can be presented to the user.
 */
NTF_EXTERN NSString *const NTFErrorLocalizedDescriptionKey;

/**
  The userInfo key describing a localized title that can be presented to the user, used with `NTFLocalizedErrorDescriptionKey`.
 */
NTF_EXTERN NSString *const NTFErrorLocalizedTitleKey;

/**
  The userInfo key describing an original error.
 */
NTF_EXTERN NSString *const NTFErrorWrappedErrorKey;

/**
  The userInfo key describing a failed request url.
 */
NTF_EXTERN NSString *const NTFErrorRequestUrlKey;

/**
  The userInfo key describing a http server status code.
 */
NTF_EXTERN NSString *const NTFErrorServerStatusCodeKey;

/**
  The userInfo key describing an original exception.
 */
NTF_EXTERN NSString *const NTFErrorWrappedExceptionKey;

/**
  The userInfo key describing a failed events db operation.
 */
NTF_EXTERN NSString *const NTFErrorEventsDbOperationKey;

/**
  The userInfo key describing a failed file operation.
 */
NTF_EXTERN NSString *const NTFErrorFileOperationKey;

/**
  The userInfo key describing a failed UI logic.
 */
NTF_EXTERN NSString *const NTFUIErrorCodeKey;

/**
  The userInfo key describing an error stacktrace if available.
 */
NTF_EXTERN NSString *const NTFErrorStackTraceKey;
