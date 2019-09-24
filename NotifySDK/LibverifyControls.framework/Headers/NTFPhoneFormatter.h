#import <UIKit/UIKit.h>
#import <libverify/NTFVerifyCallbacks.h>

@class NTFPhoneFormatterWarningLabel;
@class NTFPhoneFormatter;
@class NTFPhoneCountriesCodesViewController;
@protocol NTFVerifyApi;

NS_ASSUME_NONNULL_BEGIN
/*!
 Allows to an application configure behavior of NTFPhoneFormatter UI view and respond to
 phone number validation events.
 */
@protocol NTFPhoneFormatterDelegate <NSObject>

/*!
 Handles phone number check status
 @param formatter NTFPhoneFormatter instance
 @param phoneNumber phone number part
 @param isValid YES if phone number can be used for verification, otherwise - NO
 */
- (void)phoneFormatter:(NTFPhoneFormatter *)formatter
  didChangePhoneNumber:(NSString *)phoneNumber
               isValid:(BOOL)isValid;

@optional
- (void)phoneFormatterDidEndEditing:(NTFPhoneFormatter *)formatter;

/*!
 If delegate want to implement custom transition for countriesCodesViewController
 Use this method and return NO, after implement your own presentation.
 */
- (BOOL)shouldPresentCountriesCodesViewController:(UIViewController *)viewController;

/*!
 Perform any configuration of countries code controller appearance
 */
- (void)configureCountriesCodesViewController:(NTFPhoneCountriesCodesViewController *)viewController;

- (nullable NSArray<NSString *> *)supportedCountriesISOCodes;

- (nullable  NSArray<NSString *> *)priorityCountriesISOCodes;

@end

/*!
 UI view which allows to support auto format phone number input and runs it's validity checks
 via libverify API.
 */
@interface NTFPhoneFormatter : UIView <NTFPhoneCheckListener>

@property (nonatomic, copy, null_resettable) NSString *countryISOCode; // default is RU
@property (nonatomic, copy) NSString *service; // default is registration

@property (nonatomic, copy, readonly) NSString *fullPhoneNumber;
@property (nonatomic, assign, readonly) BOOL isValid;

@property (nonatomic, weak, nullable) id<NTFPhoneFormatterDelegate> delegate;

@property (nonatomic, strong, readonly) UITextField *countryCodeTextField;
@property (nonatomic, strong, readonly) UITextField *phoneTextField;
@property (nonatomic, strong, readonly) NTFPhoneFormatterWarningLabel *warningLabel;

/*!
 Allows to restore previous phone number text state. It will parse phone number and set up
 country code automatically.
 @param phoneNumber full phone number with prefix
 */
- (void)setPhoneNumber:(nullable NSString *)phoneNumber;

/*!
 Provides NTFPhoneFormatter component with libverify API instance to run phone number checks.
 @param api libverify api instance
 */
- (void)setApi:(id<NTFVerifyApi>)api;

@end

NS_ASSUME_NONNULL_END
