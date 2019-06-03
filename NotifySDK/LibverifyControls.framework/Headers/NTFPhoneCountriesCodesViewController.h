#import <UIKit/UIKit.h>

@protocol NTFPhoneCountriesCodesViewControllerDelegate <NSObject>

- (void)phoneCountriesCodesViewController:(nonnull UIViewController *)viewController
                  didSelectCountryISOCode:(nonnull NSString *)code;

@end

@interface NTFPhoneCountriesCodesViewController : UIViewController

@property (nonatomic, weak, nullable) id<NTFPhoneCountriesCodesViewControllerDelegate> delegate;

@property (nonatomic, copy, nullable) NSArray<NSString *> *supportedCountriesISOCodes;
@property (nonatomic, copy, nullable) NSArray<NSString *> *priorityCountriesISOCodes;

/*!
 Properties for configure view controller with country codes.
 You can setup this properties in method -[NTFPhoneFormatterDelegate configureCountriesCodesViewController:]
 which will be called before presentation this view controller.
 */
/*!
 View Controller title. You can use this property for configure localized value.
 */
@property (nonatomic, copy, null_resettable) NSString *controllerTitle;

/*!
 Placeholder of search bar. You can use this property for setup localized value.
 */
@property (nonatomic, copy, null_resettable) NSString *searchPlaceholder;

/*!
 Locale used for localize country names. View controller will use defaultLocale if this property is nil.
 */
@property (nonatomic, copy, null_resettable) NSLocale *currentLocale;

@end
