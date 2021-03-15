#import <Foundation/Foundation.h>

#import <Libverify/NTFVerifyConstants.h>

typedef NS_ENUM(NSUInteger, NTFVerifyCodeDeliveryStatus) {
    NTFVerifyCodeDeliveryStatusDelivered,
    NTFVerifyCodeDeliveryStatusNotDelivered,
};

NS_ASSUME_NONNULL_BEGIN

@interface NTFVerifyCodeDeliveryInfo : NSObject

@property (nonatomic, readonly) NTFVerificationRoute route;
@property (nonatomic, readonly) NTFVerifyCodeDeliveryStatus status;

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
