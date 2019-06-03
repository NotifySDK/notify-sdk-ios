#import <Foundation/Foundation.h>

#import <Libverify/NTFVerifyConstants.h>

@class NTFSmsCodeInfo;
@class NTFIvrInfo;

NS_ASSUME_NONNULL_BEGIN

/**
 * Describes current verification session state.
 * */
@interface NTFVerifyStateDescriptor : NSObject
/**
 * Returns a state of the verification process.
 */
@property(nonatomic, readonly, assign) NTFVerificationState state;
/**
 * Returns a source, from which a verification code has been obtained.
 * */
@property(nonatomic, readonly, assign) NTFVerificationSource source;
/**
 * Returns error reason, otherwise - {@link VerificationApi.FailReason#OK}
 * */
@property(nonatomic, readonly, assign) NTFVerificationFailReason reason;
/**
 * Returns localized text description when an obtained from {@link VerificationStateDescriptor#getReason()}
 * value is not equal to {@link FailReason#OK}. This text could be shown in UI to provide a user with detailed
 * information about a particular error.
 */
@property(nonatomic, readonly, copy, nullable) NSString * userVisibleReason;
/**
 * Returns true if this verification session has been passed successfully through
 * first verification stage (SMS code request) at least once, otherwise - false.
 * */
@property(nonatomic, readonly, assign) BOOL verifiedOnce;
/**
 * Returns modified during the verification process phone number. It is supposed to be shown
 * on a sms code entering activity to show user, which number actually will be used to send sms code.
 * */
@property(nonatomic, readonly, copy, nullable) NSString * modifiedPhoneNumber;
/**
 * This token is the main aim of the whole verification process. Application should exchange it to
 * a regular login credentials after successful verification process passing. It will be available after
 * passing state {@link VerificationState#SUCCEEDED} which could be obtained from
 * {@link VerificationStateDescriptor#getState} method. This token will be valid during timeout provided by
 * {@link VerificationStateDescriptor#getTokenExpirationTimeoutSec()} method call.
 * */
@property(nonatomic, readonly, copy, nullable) NSString * token;
/**
 * Token ({@link VerificationStateDescriptor#getToken()}) validity period in seconds.
 * It will be available after passing state {@link VerificationState#SUCCEEDED} which could be obtained from
 * {@link VerificationStateDescriptor#getState} method.
 * */
@property(nonatomic, readonly) NSNumber * tokenExpirationTimeoutSec;
/**
 * Returns information for sms code checking if it's available, otherwise - null.
 * */
@property(nonatomic, readonly, nullable) NTFSmsCodeInfo * smsCodeInfo;
/**
 * Returns information for ivr call requesting if it's available, otherwise - null.
 * */
@property(nonatomic, readonly, nullable) NTFIvrInfo * ivrInfo;

/**
 * @return Returns <b>true</b>  if verification has been completed successfully, otherwise - false.
 * */
-(BOOL) completedSuccessfully;

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

- (instancetype)init:(NTFVerificationState)state
              source:(NTFVerificationSource)source
              reason:(NTFVerificationFailReason)reason
   userVisibleReason:(nullable NSString *) userVisibleReason
        verifiedOnce:(BOOL)verifiedOnce
 modifiedPhoneNumber:(nullable NSString *)modifiedPhoneNumber
               token:(nullable NSString *)token
tokenExpirationTimeoutSec:(NSUInteger)tokenExpirationTimeoutSec
         smsCodeInfo:(nullable NTFSmsCodeInfo *)smsCodeInfo
             ivrInfo:(nullable NTFIvrInfo *)ivrInfo;

- (instancetype)initWithReason:(NTFVerificationState)state
                        reason:(NTFVerificationFailReason)reason
             userVisibleReason:userVisibleReason
                  verifiedOnce:(bool)verifiedOnce;

- (instancetype)initDefault:(NTFVerificationState)state
               verifiedOnce:(bool)verifiedOnce;

@end

@interface NTFSmsCodeInfo : NSObject
/**
 * Required sms code length. It could be configured for each service separately in the
 * libverify API.
 * */
@property(readonly, nonatomic) NSUInteger smsCodeLength;
/**
 * Shows whether a sms code can contain only numbers. It could be configured for each
 * service separately in the libverify API.
 * */
@property(readonly, nonatomic) bool isNumericSmsCode;

/**
 * Holds the last received sms code. This property could be used to show a current sms code
 * in a user input filed.
 * */
@property(readonly, copy, nonatomic, nullable) NSString * receivedSmsCode;

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

- (instancetype)init:(NSUInteger)smsCodeLength
    isNumericSmsCode:(bool)isNumericSmsCode
     receivedSmsCode:(nullable NSString *)receivedSmsCode;
@end

@interface NTFIvrInfo : NSObject

/**
 * Contains all available for an IVR call languages. Application must ensure, that user language
 * presents in this set, before calling {@link VerificationApi#requestIvrPhoneCall} method.
 * */
@property(readonly, nonatomic) NSSet<NSString *> * supportedIvrLanguages;

/**
 * Timeout, which application must wait before enabling an IVR call button since
 * transfer to {@link VerificationState#WAITING_FOR_SMS_CODE} state.
 * */
@property(readonly, nonatomic) NSUInteger ivrTimeoutSec;

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

- (instancetype)init:(NSSet<NSString *> *)supportedIvrLanguages ivrTimeoutSec:(NSUInteger)ivrTimeoutSec;

@end

NS_ASSUME_NONNULL_END
