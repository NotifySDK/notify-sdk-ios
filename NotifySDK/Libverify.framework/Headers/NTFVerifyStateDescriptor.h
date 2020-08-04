#import <Foundation/Foundation.h>

#import <Libverify/NTFVerifyConstants.h>

@class NTFSmsCodeInfo;
@class NTFIvrInfo;
@class NTFCallUIInfo;

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, NTFVerifyStateDescriptorRateLimitType) {
    NTFVerifyStateDescriptorRateLimitTypeUnknown,
    NTFVerifyStateDescriptorRateLimitTypeVerify,
    NTFVerifyStateDescriptorRateLimitTypeAttempt,
};

typedef NSString * NTFVerifyStateDescriptorUserInfoKey NS_STRING_ENUM;

/**
 If descriptor's state is NTFVerificationStateFailed and reason is NTFVerificationFailReasonNetworkError
 userInfo object can contain string describing type of network error by this key. String may be a name of NSURLError if
 error received from apple network stack.
 */
extern NTFVerifyStateDescriptorUserInfoKey const NTFVerifyStateDescriptorUserInfoKeyNetworkError;

/**
 This key are presented in the object NTFVerifyStateDescriptor in property `userInfo` if limit of attempts to validate phone number or verification code are reached .
 If you want to know which kind of request generates descriptor with state `NTFVerificationStateFailed` and with reason `NTFVerificationFailReasonRatelimit` you can check userInfo.
 Value by this key is a NSNumber with NTFVerifyStateDescriptorRateLimitType.
 */
extern NTFVerifyStateDescriptorUserInfoKey const NTFVerifyStateDescriptorUserInfoKeyRateLimitType;

/**
 Describes current verification session state.
 */
@interface NTFVerifyStateDescriptor : NSObject

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

/**
 Returns a state of the verification process.
 */
@property(nonatomic, readonly, assign) NTFVerificationState state;

/**
 Returns a state of the verification process that was before current state.
 */
@property(nonatomic, readonly, assign) NTFVerificationState previousState;

/**
 Returns a source, from which a verification code has been obtained.
 */
@property(nonatomic, readonly, assign) NTFVerificationSource source;

/**
 Returns error reason, otherwise - {@link VerificationApi.FailReason#OK}
 */
@property(nonatomic, readonly, assign) NTFVerificationFailReason reason;

/**
 This property contains additional info about state. You can find list of supported keys above.
 */
@property (nonatomic, readonly, strong, nullable) NSDictionary<NTFVerifyStateDescriptorUserInfoKey, NSObject<NSCoding> *> * userInfo;

/**
 Returns localized text description when an obtained from {@link VerificationStateDescriptor#getReason()}
 value is not equal to {@link FailReason#OK}. This text could be shown in UI to provide a user with detailed
 information about a particular error.
 */
@property(nonatomic, readonly, copy, nullable) NSString * userVisibleReason;

/**
 Returns true if this verification session has been passed successfully through
 first verification stage (SMS code request) at least once, otherwise - false.
 */
@property(nonatomic, readonly, assign) BOOL verifiedOnce;

/**
 Returns modified during the verification process phone number. It is supposed to be shown
 on a sms code entering activity to show user, which number actually will be used to send sms code.
 */
@property(nonatomic, readonly, copy, nullable) NSString * modifiedPhoneNumber;

/**
 This token is the main aim of the whole verification process. Application should exchange it to
 a regular login credentials after successful verification process passing. It will be available after
 passing state {@link VerificationState#SUCCEEDED} which could be obtained from
 {@link VerificationStateDescriptor#getState} method. This token will be valid during timeout provided by
 {@link VerificationStateDescriptor#getTokenExpirationTimeoutSec()} method call.
 */
@property(nonatomic, readonly, copy, nullable) NSString * token;

/**
 Token ({@link VerificationStateDescriptor#getToken()}) validity period in seconds.
 It will be available after passing state {@link VerificationState#SUCCEEDED} which could be obtained from
 {@link VerificationStateDescriptor#getState} method.
 */
@property(nonatomic, readonly) NSNumber * tokenExpirationTimeoutSec;

/**
 Returns information for sms code checking if it's available, otherwise - null.
 */
@property(nonatomic, readonly, nullable) NTFSmsCodeInfo * smsCodeInfo;

/**
 Returns information for ivr call requesting if it's available, otherwise - null.
 */
@property(nonatomic, readonly, nullable) NTFIvrInfo * ivrInfo;

/**
 Returns information for callui if route type is NTFVerificationRouteCallUI
 */
@property(nonatomic, readonly, nullable) NTFCallUIInfo * callUIInfo;

/**
 This field matters only when state is *waitingForSmsCode*

 Varius routes can requires vatious settings of UI and can differs by code length, for example.
 In general information about the most of routes may be taken from fields `smsCodeInfo` and `ivrInfo`

 But route callUI is outstanding and information about it you can get from field `callUIInfo`.
 */
@property(nonatomic, readonly) NTFVerificationRoute currentRoute;

/**
 @return Returns <b>true</b>  if verification has been completed successfully, otherwise - false.
 */
-(BOOL) completedSuccessfully;

@end

// MARK: - NTFSmsCodeInfo

@interface NTFSmsCodeInfo : NSObject

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

/**
 Required sms code length. It could be configured for each service separately in the
 libverify API.
 */
@property(readonly, nonatomic) NSUInteger smsCodeLength;
/**
 Shows whether a sms code can contain only numbers. It could be configured for each
 service separately in the libverify API.
 */
@property(readonly, nonatomic) bool isNumericSmsCode;

/**
 Holds the last received sms code. This property could be used to show a current sms code
 in a user input filed.
 */
@property(readonly, copy, nonatomic, nullable) NSString * receivedSmsCode;

@end

// MARK: - NTFIvrInfo

@interface NTFIvrInfo : NSObject

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

/**
 Contains all available for an IVR call languages. Application must ensure, that user language
 presents in this set, before calling {@link VerificationApi#requestIvrPhoneCall} method.
 */
@property(readonly, nonatomic) NSSet<NSString *> * supportedIvrLanguages;

/**
 Timeout, which application must wait before enabling an IVR call button since
 transfer to {@link VerificationState#WAITING_FOR_SMS_CODE} state.
 */
@property(readonly, nonatomic) NSUInteger ivrTimeoutSec;

@end

// MARK: - NTFCallUIInfo

@interface NTFCallUIInfo : NSObject

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

/**
 Prefix of phone number which will be used to call
 */
@property (nonatomic, strong, readonly, nullable) NSString * fragmentStart;

/**
 Text information about phone number
 */
@property (nonatomic, strong, readonly) NSString * userDescription;

/**
 Text information about this route
 */
@property (nonatomic, strong, readonly, nullable) NSString * userDescriptionOptional;

/**
 Required code length. Actually this field is a doublicate of field `smsCodeLength` from `smsCodeInfo`.
 */
@property (readonly, nonatomic) NSUInteger codeLength;

@end

NS_ASSUME_NONNULL_END
