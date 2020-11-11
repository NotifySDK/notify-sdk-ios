#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// This class allows you to configure verification process.
/// Library makes copy of this class when you send it as a parameter and any other changes will be ignored.
@interface NTFVerificationParameters : NSObject <NSCopying>

// By default route  callui available if you enabled it in library config.
// But you can disable this route type setted up callUIDisabled as true.
@property (nonatomic, assign) bool callUIDisabled;

@end

NS_ASSUME_NONNULL_END
