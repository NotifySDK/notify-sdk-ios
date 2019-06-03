#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NTFPhoneFormatterWarningLabel : UILabel

@property (nonatomic, assign) BOOL isWarning;
@property (nonatomic, strong, null_resettable) UIColor *warningColor;
@property (nonatomic, strong, null_resettable) UIColor *infoColor;

@end

NS_ASSUME_NONNULL_END
