#import <Foundation/Foundation.h>

@protocol NTFVerifyApi;
@protocol NTFPhoneCheckListener;

NS_ASSUME_NONNULL_BEGIN

/**
 * Tiny helper class represents single phone number validation session. Each time user starts phone number
 * verification, application should use new instance of this object.
 * */
@interface NTFPhoneNumberCheckSession : NSObject

- (instancetype)init:(id <NTFVerifyApi>)verificationApi;

/**
 * Passes user params to {@link VerificationApi#checkPhoneNumber} method call.
 * @param service see {@link VerificationApi#checkPhoneNumber} method
 * @param phoneNumber see {@link VerificationApi#checkPhoneNumber} method
 * @param extendedInfo see {@link VerificationApi#checkPhoneNumber} method
 * @param listener see {@link VerificationApi#checkPhoneNumber} method
 */
-(void)checkPhoneNumber:(NSString *) service
               withPhone:(NSString *) phoneNumber
             withExtInfo:(BOOL) extendedInfo
            withListener:(id<NTFPhoneCheckListener>) listener;

@end

NS_ASSUME_NONNULL_END
