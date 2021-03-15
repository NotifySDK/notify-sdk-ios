#import <Foundation/Foundation.h>

#import <Libverify/NTFVerifyConstants.h>

NS_ASSUME_NONNULL_BEGIN

/**
 Information about route used in manual resends.
 */
@interface NTFVerifyRouteInfo : NSObject

@property (nonatomic, assign, readonly) NTFVerificationRoute route;
@property (nonatomic, assign, readonly) NSTimeInterval timeout;

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
