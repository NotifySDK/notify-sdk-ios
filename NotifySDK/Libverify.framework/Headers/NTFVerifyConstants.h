#import <Foundation/Foundation.h>

//TODO - fix references from Android

/**
 * Describes reason why an application or a user intend to cancel started before
 * phone verification session.
 * */
typedef NS_ENUM(NSInteger, NTFVerificationCancelReason) {
    /**
     * Failed to swap libverify token to an application token due
     * to the application backend error.
     * */
    NTFCancelReasonTokenSwapGeneralError = 0,
    /**
     * Failed to swap libverify token to an application token due
     * to the recoverable network error. This should be fixed with the request retry.
     * */
    NTFCancelReasonTokenSwapNetworkError = 1,
    /**
     * User manually stopped verification process for instance using key press.
     * */
    NTFCancelReasonCancelledByUser = 2,
    /**
     * User manually notified an application that phone number modification is required.
     * */
    NTFCancelReasonPhoneEditByUser = 3,
    /**
     * Unknown exception or error during phone verification process.
     * */
    NTFCancelReasonGeneralError = 4,
    /**
     * No error, don't send anything to statistics.
     * */
    NTFCancelReasonOk = 5
};

/**
 * Defines all possible verification session results.
 * */
typedef NS_ENUM(NSInteger, NTFVerificationFailReason) {
    /**
     * Verification session succeeded and libverify received verification token.
     * */
    NTFVerificationFailReasonOk = 0,
    /**
     * Something went wrong during verification process.
     * */
    NTFVerificationFailReasonGeneralError = 1,
    /**
     * User entered phone number, which couldn't be used for sending sms code.
     * */
    NTFVerificationFailReasonUnsupportedNumber = 2,
    /**
     * User entered incorrect phone number.
     * */
    NTFVerificationFailReasonIncorrectPhoneNumber = 3,
    /**
     * User entered sms code phone number.
     * */
    NTFVerificationFailReasonIncorrectSmsCode = 4,
    /**
     * Too many attempts to pass though verification. This is a recoverable error.
     * */
    NTFVerificationFailReasonRatelimit = 5,
    /**
     * There was some kind of network request error e.g. libverify API was in the downtime.
     * If network error occurs during first phase execution, libverify will try to make several attempts
     * before raising an error. Talking about second phase, originated from {@link VerificationApi#verifySmsCode}
     * method, libverify will wait for internet connection infinitely until
     * {@link VerificationApi#cancelVerification} method call.
     * */
    NTFVerificationFailReasonNetworkError = 6,
    /**
     * This kind of error will be raised immediately without any network operations, if libverify knows exactly that
     * there is no available network connection during first phase of verification process, started using
     * {@link VerificationApi#startVerification} method.
     * */
    NTFVerificationFailReasonNoNetwork = 7
};

/**
 * Defines a list of available sources for libverify instance verification.
 * */
typedef NS_ENUM(NSInteger, NTFVerificationSource) {
    /**
     * Default
     * */
    NTFVerificationSourceUnknown = 0,
    /**
     * User entered code into provided by an application text form
     * */
    NTFVerificationSourceUserInput = 1,
    /**
     * This instance has been verified earlier and API returns verification token without any other actions.
     * It it possible only if a device configuration(imei, imsi, advertisement_id) hasn't been changed and
     * an application hasn't been reinstalled since last instance verification.
     * */
    NTFVerificationSourceAlreadyVerified = 2,
    /**
     * This libverify instance received sms code from another libverify enabled application across
     * this system using IPC connection.
     * */
    NTFVerificationSourceApplicationLocal = 3
};

/**
 * Verification session working states.
 * */
typedef NS_ENUM(NSInteger, NTFVerificationState) {
    /**
     * default verification session state
     * */
    NTFVerificationStateInitial = 0,
    /**
     * Verification session started phone number validation request. Application UI should
     * show some kind of progress during this state.
     * */
    NTFVerificationStateVerifyingPhoneNumber = 1,
    /**
     * Phone number verification succeeded and now we are able to show user UI for sms code entering.
     * */
    NTFVerificationStateWaitingForSmsCode = 2,
    /**
     * Verification session obtained sms code using one of a bunch of ways, defined in
     * {@link VerificationSource} and started sms code verification request. Application
     * UI should show some kind of progress during this state.
     * */
    NTFVerificationStateVerifyingSmsCode = 3,
    /**
     * Verification session received token, which could be obtained using
     * {@link VerificationStateDescriptor#getToken} method. Application now is able to call it's own
     * service API to exchange libverify token to it's own authorization token.
     * */
    NTFVerificationStateSucceeded = 4,
    /**
     * Verification session failed by some kind of problem, which could be obtained using {@link VerificationStateDescriptor#getReason}.
     * */
    NTFVerificationStateFailed = 5,
    /**
     * Verification session is waiting for the network connection appearance.
     * */
    NTFVerificationStateSuspended = 6,
    /**
     * Final verification session state. The session could enter to this state ether from {@link VerificationState#SUCCEEDED}
     * or from {@link VerificationState#FAILED}. After that session will stay in the libverify and could
     * be queried using {@link VerificationApi#requestVerificationState} or {@link VerificationApi#requestVerificationStates}.
     * */
    NTFVerificationStateFinal = 7
};

/**
 * Phone number state
 * */
typedef NS_ENUM(NSInteger, NTFPhoneCheckState) {
    /**
     * It's possible to use this phone number for further verification process
     * (phone number is not blocked, complete and libverify API is able to deliver sms or IVR to it).
     * */
    NTFPhoneCheckStateValid = 0,
    /**
     * It's impossible to use this phone number for further verification process. So, if an application
     * tries to pass it to a {@link VerificationApi#startVerification}, it will definitely receive an error
     * with {@link VerificationApi.FailReason#INCORRECT_PHONE_NUMBER} or {@link VerificationApi.FailReason#UNSUPPORTED_NUMBER}.
     * As a response to this state an application must block start verification button.
     * */
    NTFPhoneCheckStateInvalid = 1,
    /**
     * Not enough information to check this phone number. Here is the same situation like in
     * {@link VerificationApi.PhoneCheckResult.State#INVALID}, but an application should not show
     * any error notification in UI.
     * */
    NTFPhoneCheckStateUnknown = 2
};

NS_ASSUME_NONNULL_BEGIN

/**
 * Helper functions to convert libverify enums to string representation.
 * */
@interface NTFVerificationConstants : NSObject

+ (NSString *) stateToString:(NTFVerificationState) state;
+ (NSString *) reasonToString:(NTFVerificationFailReason) reason;
+ (NSString *) verificationSourceToString:(NTFVerificationSource) source;
+ (NSString *) cancelReasonToString:(NTFVerificationCancelReason) reason;

@end

NS_ASSUME_NONNULL_END
