#import <Foundation/Foundation.h>

#import <Libverify/NTFVerifyConstants.h>
#import <Libverify/NTFVerifyCallbacks.h>

typedef NS_ENUM(NSUInteger, NTFVerifyApiVerificationMethod) {
    NTFVerifyApiVerificationTypeSms,
    NTFVerifyApiVerificationTypePush,
    NTFVerifyApiVerificationTypeCallUI,
    NTFVerifyApiVerificationTypeIvr,
};

NS_ASSUME_NONNULL_BEGIN
/*!
 {@link VerificationApi} is the main libverify interface which provides all basic functionality
 for a phone number verification and some other service functions.
 */
@protocol NTFVerifyApi <NSObject>

/*!
 Allows to configure library UI language. Also setup current language changes language of pushes, sms or ivr-calls.
 If you try to setup null as currentLanguage library will use current system language.
 Value should be formatted by standard ISO 639-1 (f.e. "ru", "en")
 */
@property (nonatomic, null_resettable) NSString * currentLanguage;

/*!
 @param verificationService variation service for a target backend (e.g icq_registration)
 @param userProvidedPhoneNumber phone number entered by user (no format restrictions)
 Note that, the provided mapping is valid only for passed in verificationService argument service name.
 @return verification session id, which should be stored in client application during verification process.
 The most part of other {@link VerificationApi} functions use this id as a mandatory argument.
 */
-(NSString *) startVerification:(NSString *) verificationService
                      withPhone:(NSString *) userProvidedPhoneNumber;

/*!
 This method is very similar to the method `startVerification:withPhone:` but this method allows application select only one method to verify phone number.
 @param verificationService variation service for a target backend (e.g icq_registration)
 @param userProvidedPhoneNumber phone number entered by user (no format restrictions)
 @param verificationMethod is the only method will be used to verify phone number
 Note that, the provided mapping is valid only for passed in verificationService argument service name.
 @return verification session id, which should be stored in client application during verification process.
 The most part of other {@link VerificationApi} functions use this id as a mandatory argument.
 */
-(NSString *) startVerification:(NSString *) verificationService
                      withPhone:(NSString *) userProvidedPhoneNumber
         withVerificationMethod:(NTFVerifyApiVerificationMethod)verificationMethod;

/*!
 @param verificationService variation service for a target backend (e.g icq_registration)
 @param userId email, token, uuid or any other string identifier to identify user
 Note that, the provided mapping is valid only for passed in verificationService argument service name.
 @return verification session id, which should be stored in client application during verification process.
 The most part of other {@link VerificationApi} functions use this id as a mandatory argument.
 */
-(NSString *) startVerification:(NSString *) verificationService
                     withUserId:(NSString *) userId;

/*!
 This method is very similar to the method `startVerification:withUserId:` but this method allows application select only one method to verify phone number.
 @param verificationService variation service for a target backend (e.g icq_registration)
 @param userId email, token, uuid or any other string identifier to identify user
 @param verificationMethod is the only method will be used to verify phone number
 Note that, the provided mapping is valid only for passed in verificationService argument service name.
 @return verification session id, which should be stored in client application during verification process.
 The most part of other {@link VerificationApi} functions use this id as a mandatory argument.
 */
-(NSString *) startVerification:(NSString *) verificationService
                     withUserId:(NSString *) userId
         withVerificationMethod:(NTFVerifyApiVerificationMethod)verificationMethod;

/**
 Method to verification from VKConnect.
 @param verificationService variation service for a target backend (e.g icq_registration)
 @param userProvidedPhoneNumber phone number entered by user (no format restrictions)
 @param srcApplication application that used by VCConnect as verificator
 Note that, the provided mapping is valid only for passed in verificationService argument service name.
 @return verification session id, which should be stored in client application during verification process.
 The most part of other {@link VerificationApi} functions use this id as a mandatory argument.
 */
-(NSString *) startVKConnectVerification:(NSString *) verificationService
                               withPhone:(NSString *) userProvidedPhoneNumber
                      withSrcApplication:(nullable NSString *) srcApplication;

/**
 Method to verification from VKConnect.
 @param verificationService variation service for a target backend (e.g icq_registration)
 @param userId email, token, uuid or any other string identifier to identify user
 @param srcApplication application that used by VCConnect as verificator
 Note that, the provided mapping is valid only for passed in verificationService argument service name.
 @return verification session id, which should be stored in client application during verification process.
 The most part of other {@link VerificationApi} functions use this id as a mandatory argument.
 */
-(NSString *) startVKConnectVerification:(NSString *) verificationService
                              withUserId:(NSString *) userId
                      withSrcApplication:(nullable NSString *) srcApplication;

/**
 Method to verification from VKConnect.
 @param verificationService variation service for a target backend (e.g icq_registration)
 @param userProvidedPhoneNumber phone number entered by user (no format restrictions)
 @param userId email, token, uuid or any other string identifier to identify user
 @param srcApplication application that used by VCConnect as verificator
 Note that, the provided mapping is valid only for passed in verificationService argument service name.
 @return verification session id, which should be stored in client application during verification process.
 The most part of other {@link VerificationApi} functions use this id as a mandatory argument.
 */
-(NSString *) startVKConnectVerification:(NSString *) verificationService
                               withPhone:(NSString *) userProvidedPhoneNumber
                              withUserId:(NSString *) userId
                      withSrcApplication:(nullable NSString *) srcApplication;

/*!
 Cancels verification process asynchronously. It's important to remove a subscription
 using {@link VerificationApi#removeVerificationStateChangedListener} or/and set local variable keeping
 verification session id value to null.
 @param sessionId verification session id obtained from {@link VerificationApi#startVerification}
 */
-(void) cancelVerification:(NSString *) sessionId;

/*!
 Works exactly as {@link VerificationApi#cancelVerification(String)}, but provides additional
 data for statistics.
 */
-(void) cancelVerification:(NSString *) sessionId
                withResson:(NTFVerificationCancelReason) reason;

/*!
 Finalizes verification process asynchronously. Each verification session will be available for state querying
 using {@link VerificationApi#requestVerificationState} or {@link VerificationApi#requestVerificationStates}
 until this method call regardless it's current state.
 @param sessionId verification session id obtained from {@link VerificationApi#startVerification}
 */
-(void) completeVerification:(NSString *) sessionId;

/*!
 Forces existing verification session to check user entered sms code asynchronously.
 @param sessionId verification session id obtained from {@link VerificationApi#startVerification}
 @param smsCode user entered sms code (could be validated during user input process using data
 returned from {@link VerificationStateDescriptor#getSmsCodeInfo()}).
 */
-(void) verifySmsCode:(NSString *) sessionId
          withSmsCode:(NSString *) smsCode;

/*!
 Resets error in {@link FailReason} property of {@link VerificationStateDescriptor} for a provided verification session id.
 In case of wrong <b>user provided sms code</b> appearance an application receives {@link VerificationStateDescriptor} with
 {@link ru.mail.libverify.api.VerificationApi.FailReason#INCORRECT_SMS_CODE}, and after that libverify will keep this state until
 next state change or this method call. So, an application should call this method only when it's guaranteed that user viewed
 an error message and ready to fix a code.
 @param sessionId verification session id
 */
-(void) resetVerificationCodeError:(NSString *) sessionId;

/*!
 Resets libverify instance to the default state. Note that after this function call the current instance will lose it's
 verification if it has been verified before. Also note, that this method
 */
-(void) reset;

/*!
 Sends special request to libverify backend which prevents receiving sms code notifications on this
 device across all applications. Unlike {@link VerificationApi#signOut} and {@link VerificationApi#reset}
 methods it doesn't removes libverify's instance id, so this instance will keep it's verified status as well
 as other device instances. This means, that, on condition of all verification parameters equallity,
 the fact that previous verification was maintained using autoparsed sms code (it is the same device
 with the same simcard and the same instance id) and elapsed time since this method call,
 user will be verified next time without sms/IPC code entering.
 Note that, it is less secure than {@link VerificationApi#signOut}}, but more preferable considering
 conversion and efficiency reasons. So, each client application should decide which sign out policy
 is suitable for it.
 */
-(void) softSignOut;

/*!
 Resets libverify instance and sends special request to libverify API, which forces it to drop
 verification status from all instances, verified to the same phone number, on this particular device or
 all instances across all user devices. This method must be called during an application sign out process,
 which was initiated by a user, to prevent receiving verification code from other applications, installed on a
 device.
 @param dropAllInstances if true - all libverify instances verified on the same phone number (like this particular
 instance) will be unverified, otherwise - this device bound instances only will lose their verification
 */
-(void) signOut:(bool) dropAllInstances;

/*!
 Requests a new verification sms code for already existing and started session. Application must wait some
 time before enabling a button, which calls this method since transfer to
 {@link VerificationState#WAITING_FOR_SMS_CODE} state.
 @param sessionId verification session id
 */
-(void) requestNewSmsCode:(NSString *) sessionId;

/*!
 Requests ivr call asynchronously. Note, that you should implement UI visible timer
 ({@link VerificationStateDescriptor.IvrInfo#ivrTimeoutSec} - initial timer value) before enabling button,
 which forces this function call. It is supposed, that timer countdown starts when application firstly receives
 {@link VerificationState#WAITING_FOR_SMS_CODE} state. After pressing on the button, you should also block it
 and restart the timer for the same period of time. Before calling this method application must ensure, that
 user language is supported by libverify API using {@link VerificationStateDescriptor.IvrInfo#supportedIvrLanguages}.
 @param sessionId verification session id
 @param listener ivr request state listener (NOTE: it will be called from background thread)
 */
-(void) requestIvrPhoneCall:(NSString *) sessionId
               withListener:(id<NTFIvrStateListener>) listener;

/*!
 Call-UI - it's a type of verification when user receives incoming phone call and have to use tail of incoming number as a verification code.
 Requests phone call asynchronously. Note, that you should implement UI visible timer
 ({@link VerificationStateDescriptor.IvrInfo#ivrTimeoutSec} - initial timer value) before enabling button,
 which forces this function call. It is supposed, that timer countdown starts when application firstly receives
 {@link VerificationState#WAITING_FOR_SMS_CODE} state. After pressing on the button, you should also block it
 and restart the timer for the same period of time. Before calling this method application must ensure, that
 user language is supported by libverify API using {@link VerificationStateDescriptor.IvrInfo#supportedIvrLanguages}.
 @param sessionId verification session id
 @param listener call-ui request state listener (NOTE: it will be called from background thread)
 */
-(void) requestCallUIForSession:(NSString *) sessionId
                   withListener:(id<NTFCallUIStateListener>) listener;

/*!
 Requests state of the current session asynchronously.
 @param sessionId verification session id
 @param listener callback with current verification session state (NOTE: it will be called from background thread)
 */
-(void) requestVerificationState:(NSString *) sessionId
                    withListener:(id<NTFVerificationStateChangedListener>)listener NS_SWIFT_NAME(requestVerificationStateWith(sessionId:listener:));

/*!
 Subscribes for receiving verification session state changes.
 Note, that {@link VerificationStateChangedListener#onStateChanged} callback method
 will be called from a library worker thread.
 @param listener callback
 */
-(void) addVerificationStateChangedListener:(id<NTFVerificationStateChangedListener>) listener NS_SWIFT_NAME(addVerificationStateChangedListener(_:));

/*!
 Removes subscription for receiving verification session state changes.
 @param listener callback
 */
-(void) removeVerificationStateChangedListener:(id<NTFVerificationStateChangedListener>) listener NS_SWIFT_NAME(removeVerificationStateChangedListener(_:));

/*!
 Allows to pass device push token to libnotify API. Use unchanged value received from AppDelegate
 callback.
 @param deviceToken device push token
 */
-(void) updatePushRegistrationId:(NSData *) deviceToken;

/*!
 Validates asynchronously user provided phone number using libverify server API request.
 An application also can use {@link PhoneNumberCheckSession} class helper to create a check phone number
 requests. For more information about the internal work of this method,
 follow this link <a href="https://confluence.mail.ru/display/Windows/phoneinfo">Phone info API</a>.
 @param checkId random id, which is unique for one phone number validation (i.e. if user is trying to
 use phone number +79191234567, application should call this method with the same checkId parameter value
 for all phone number parts)
 @param service variation service for a target backend (e.g icq_registration)
 @param phoneNumber user provided phone number part
 @param extendedInfo true if application wants to receive extended phone info, otherwise false
 (<b>NOTE: the only reason to set this parameter to false is internet traffic decrease during
 registration process, but anyway it will be an insignificant benefit</b>)
 @param listener callback with phone number information (NOTE: it will be called from background thread)
 */
-(void) checkPhoneNumber:(NSString *) checkId
             withService:(NSString *) service
               withPhone:(NSString *) phoneNumber
             withExtInfo:(BOOL) extendedInfo
            withListener:(id<NTFPhoneCheckListener>) listener;

@end

NS_ASSUME_NONNULL_END
