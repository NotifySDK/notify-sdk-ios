#import <Foundation/Foundation.h>

#import <Libverify/NTFVerifyApi.h>
#import <Libverify/NTFVerificationParameters.h>
#import <Libverify/NTFVerifyConstants.h>

typedef NS_ENUM(NSInteger, NTFVerificationStep) {
    NTFVerificationStepEnterPhone = 0,
    NTFVerificationStepEnterSMSCode
};

@class NTFVerificationService;
@class NTFVerifyStateDescriptor;

NS_ASSUME_NONNULL_BEGIN

@protocol NTFVerificationServiceDelegate <NSObject>

@required
/**
 * Notify that verification process completed
 * @param token Token received when verification process completed
 * @param state Actual state of verification process
 */
- (void)verificationService:(NTFVerificationService *)service
      verificationCompleted:(NSString *)token
                      state:(NTFVerifyStateDescriptor *)state;

/**
 * Notify that verification process changed progress state
 * @param inProgress Indicate if verification process is in progress
 * @param state Actual state of verification process
 */
- (void)verificationService:(NTFVerificationService *)service
                  inProgres:(BOOL)inProgress
                      state:(NTFVerifyStateDescriptor *)state;

@optional

/**
 * Notify that verification code request completed
 * @param isFatal YES if verification has been completed with error and can't be resumed,
 *        otherwise - NO (ex: an incorrect sms code has been provided)
 * @param state Actual state of verification process
 */
- (void)verificationService:(NTFVerificationService *)service
          verificationError:(BOOL)isFatal
                      state:(NTFVerifyStateDescriptor *)state;

/**
 * Notify that verification step changed
 * @param step Define current step of verification (verifying phone / verifying code)
 * @param state Actual state of verification process
 */
- (void)verificationService:(NTFVerificationService *)service
    verificationStepChanged:(NTFVerificationStep)step
                      state:(NTFVerifyStateDescriptor *)state;

/**
 * Notify that ivr call request completed
 * @param success Indicates if request was successful
 * @param state Actual state of verification process
 */
- (void)verificationService:(NTFVerificationService *)service
    requestIvrCallCompleted:(BOOL)success
                      state:(NTFVerifyStateDescriptor *)state;

/**
 * Notify that call for call-ui request completed
 * @param success Indicates if request was successful
 * @param state Actual state of verification process
 */
- (void)verificationService:(NTFVerificationService *)service
     requestCallUICompleted:(BOOL)success
                      state:(NTFVerifyStateDescriptor *)state;

/**
 * Notify that actual state of verification process changed
 * @param state Actual state of verification process
 */
- (void)verificationService:(NTFVerificationService *)service
   verificationStateChanged:(NTFVerifyStateDescriptor *)state;

/**
 * Notify that current verification process was suspended
 * @param state Actual state of verification process
 */
- (void)verificationService:(NTFVerificationService *)service
      verificationSuspended:(NTFVerifyStateDescriptor *)state;

@end

@interface NTFVerificationService : NSObject

/**
 * Returns a service for a target backend (e.g icq_registration).
 */
@property(nonatomic, readonly) NSString *verificationService;
/**
 * Returns a verification session ID.
 */
@property(nonatomic, readonly, nullable) NSString *verificationID;
/**
 * Returns a verification process step.
 */
@property(nonatomic, readonly) NTFVerificationStep verificationStep;
/**
 * Returns a state of the verification process.
 */
@property(nonatomic, readonly, nullable) NTFVerifyStateDescriptor *state;

/**
 * Returns date when ivr call should be enabled.
 */
@property(nonatomic, readonly, nullable) NSDate *ivrUnblockTimeout;

/**
 * Returns required verification code length.
 */
@property(nonatomic, readonly) NSUInteger verificationCodeLength;
/**
 * Returns if required verification code should be numeric.
 */
@property(nonatomic, readonly) BOOL isVerificationCodeNumeric;

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

+ (instancetype)sharedService;

/**
 * Configure current service
 * @param verificationService variation service for a target backend (e.g icq_registration)
 */
- (void)configureServiceWith:(NSString*)verificationService;
/**
 * Restore last state of the service with saved verificationID
 * @param verificationID verification session id
 */
- (void)restoreServiceStateWith:(NSString*)verificationID;

/**
 * Validate phone number and request verification code
 * @param phoneNumber phone number entered by user (no format restrictions)
 * All results of verification will be delivered via NTFVerificationServiceDelegate
 */
- (void)requestVerificationCodeForPhone:(NSString *)phoneNumber;

/**
 * Validate phone number and request verification code
 * @param phoneNumber phone number entered by user (no format restrictions)
 * @param verificationMethod allows user to select route to send verification code.
 * All results of verification will be delivered via NTFVerificationServiceDelegate
 */
- (void)requestVerificationCodeForPhone:(NSString *)phoneNumber
                 withVerificationMethod:(NTFVerifyApiVerificationMethod)verificationMethod;

/**
 * Validate phone number and request verification code
 * @param phoneNumber phone number entered by user (no format restrictions)
 * @param params verification parameters
 * All results of verification will be delivered via NTFVerificationServiceDelegate
 */
- (void)requestVerificationCodeForPhone:(NSString *)phoneNumber
                             withParams:(NTFVerificationParameters *)params;

/**
 * Validate user by userId and request verification code
 * @param userId email, token or any other user identifier
 * All results of verification will be delivered via NTFVerificationServiceDelegate
 */
- (void)requestVerificationCodeByUserId:(NSString *)userId;

/**
 * Validate user by userId and request verification code
 * @param userId email, token or any other user identifier
 * @param verificationMethod allows user to select route to send verification code.
 * All results of verification will be delivered via NTFVerificationServiceDelegate
 */
- (void)requestVerificationCodeByUserId:(NSString *)userId
                 withVerificationMethod:(NTFVerifyApiVerificationMethod)verificationMethod;

/**
 * Validate user by userId and request verification code
 * @param userId email, token or any other user identifier
 * @param params verification parameters
 * All results of verification will be delivered via NTFVerificationServiceDelegate
 */
- (void)requestVerificationCodeByUserId:(NSString *)userId
                             withParams:(NTFVerificationParameters *)params;

/**
 * Request new verification code for phone number specified in {@link NTFVerificationService#requestVerificationCodeForPhone(String)}
 * All results of verification will be delivered via NTFVerificationServiceDelegate
 */
- (void)requestNewSmsCode;
/**
 * Send asynchronously request to validate verification code
 * @param code verification code received via push notification, sms or ivr call
 * All results of verification will be delivered via NTFVerificationServiceDelegate
 */
- (void)verifyCode:(NSString *)code;

/**
 * Request automatic ivr call to phone number specified in {@link NTFVerificationService#requestVerificationCodeForPhone(String)}
 * All results of verification will be delivered via NTFVerificationServiceDelegate
 */
- (void)requestIvrCall;

/**
 * Cancels verification process asynchronously. It's important to remove a subscription.
 * Automatically called when verification process failed.
 * Invoke this function to force cancel verification session and renew {@link NTFVerificationService#verificationID}
 */
- (void)cancelVerification:(NTFVerificationCancelReason)reason;

/**
 * Finalizes verification process asynchronously. Each verification session will be available for state querying
 */
- (void)completeVerification;

/**
 * {@link NTFVerifyApi#softSignOut}
 */
- (void)softSignOut;

/**
 * {@link NTFVerifyApi#signOut(Bool)}
 */
- (void)signOut:(bool)dropAllInstances;

/**
 * {@link NTFVerifyApi#resetVerificationCodeError(String)}
 */
- (void)resetVerificationCode;

/**
 * Checks if specified verification code has valid format.
 * Checks code length and isNumeric attribute.
 * @param code verification code received via push notification, sms or ivr call
 */
- (BOOL)isValidCode:(NSString *)code;

/**
 * Add weak reference of delegate to subscribe for service callbacks
 */
- (void)addDelegate:(id<NTFVerificationServiceDelegate>)delegate;
/**
 * Remove delegate reference from service
 */
- (void)removeDelegate:(id<NTFVerificationServiceDelegate>)delegate;

@end

NS_ASSUME_NONNULL_END
