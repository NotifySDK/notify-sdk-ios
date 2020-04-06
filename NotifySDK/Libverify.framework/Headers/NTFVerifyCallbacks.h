#import <Foundation/Foundation.h>

#import <Libverify/NTFVerifyConstants.h>

@class NTFVerifyStateDescriptor;
@protocol NTFPhoneCheckResult;

NS_ASSUME_NONNULL_BEGIN

/**
 * Listener class for obtaining libverify verification session state changes.
 * */
@protocol NTFVerificationStateChangedListener <NSObject>

/**
 * @param sessionId verification session id
 * @param state verification session state. Note, that this argument could be equal to null, in case when
 * there is no verification sessions with provided id. So, application <b>must check if this argument is not equal to null</b>
 * before using one.
 * */
-(void) onStateChanged:(NSString *) sessionId
        withDescriptor:(nullable NTFVerifyStateDescriptor *) state;

@end


/**
 * Listener class for requesting ivr call.
 * */
@protocol NTFIvrStateListener <NSObject>

-(void)onRequestExecuted:(NTFVerificationFailReason) result;

@end

@protocol NTFCallUIStateListener <NSObject>

-(void)onCallUIRequestExecuted:(NTFVerificationFailReason) result;

@end

/**
 * Listener for receiving phone number validation results from {@link VerificationApi#checkPhoneNumber} method call.
 * */
@protocol NTFPhoneCheckListener <NSObject>

/**
* Callback method
* @param phoneNumber Phone number part which was present in a {@link VerificationApi#checkPhoneNumber} method call.
* It is designed to be compared with current input state to decide if this information has been outdated or not.
* @param result Phone check result
*/
-(void) onCompleted:(nullable NSString *)phoneNumber withResult:(id<NTFPhoneCheckResult>) result;

@end

NS_ASSUME_NONNULL_END
