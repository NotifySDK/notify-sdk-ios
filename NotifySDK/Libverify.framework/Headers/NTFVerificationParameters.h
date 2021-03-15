#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, NTFVerificationParametersCallUIState) {
    NTFVerificationParametersCallUIStateDefault = 0,
    NTFVerificationParametersCallUIStateEnabled,
    NTFVerificationParametersCallUIStateDisabled,
};

/**
 This class allows you to configure verification process.
 Library makes copy of this class when you send it as a parameter and any other changes will be ignored.
 */
@interface NTFVerificationParameters : NSObject <NSCopying>

/**
 This property is obsoleted and actually modifies property callUIState.
 Please don't use this property. It will be removed soon.
 */
@property (nonatomic, assign) bool callUIDisabled;

/**
 By default route  callui is configured with library config.
 But you can change default behaviour.
 */
@property (nonatomic, assign) NTFVerificationParametersCallUIState callUIState;

/**
 This field is required to additional checks in some services.
 */
@property (nonatomic, strong, nullable) NSString * externalId;

/**
 Flag to enable/disable manual management of codes resend.
 */
@property (nonatomic, assign) bool manualResendMode;

@end

NS_ASSUME_NONNULL_END
