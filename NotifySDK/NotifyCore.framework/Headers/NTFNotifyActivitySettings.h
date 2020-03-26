#import <Foundation/Foundation.h>

#import <NotifyCore/NTFNotifyActivityColorSettings.h>

NS_ASSUME_NONNULL_BEGIN

/**
 Library will use fonts according next options
 */
typedef NS_ENUM(NSUInteger, NTFNotifyActivityFontType) {
    /**
     This option allows to use dynamic fonts in activity. Base fonts are:
     - Title font: System font, 24pt, Bold
     - Body font: System font, 16pt, Regular
     - Button title font: System font, 16pt, Semibold
     On changing system settings fonts size in activity will be changed.
     */
    NTFNotifyActivityFontTypeDynamic,
    /**
     This option allows to use system fonts but library will ignore any changes of UI-traits.
     Base fonts are:
     - Title font: System font, 24pt, Bold
     - Body font: System font, 16pt, Regular
     - Button title font: System font, 16pt, Semibold
     */
    NTFNotifyActivityFontTypeStatic,
    /**
     This option allows to use custom fonts. You have to implement all related methods in
     NotifyDelegate. If at least one of these methods is not implemented library will use static fonts.
     On changes UI-treats library will ask delegate about appropriate fonts.
     */
    NTFNotifyActivityFontTypeCustom,
};

@interface NTFNotifyActivitySettings : NSObject <NSCopying>

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

/**
 Color settings for activity. Allows to enable dark mode.
 */
@property (nonatomic, readonly) NTFNotifyActivityColorSettings * colorSettings;

/**
 Setup appropriate font type.
 */
@property (nonatomic, assign) NTFNotifyActivityFontType fontType;

@end

NS_ASSUME_NONNULL_END
