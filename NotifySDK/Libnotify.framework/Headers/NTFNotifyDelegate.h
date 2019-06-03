#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol NTFNotifyDelegate <NSObject>

/**
 This method is called when user select action open_main
 on landing. It's called in main thread.
 */
- (bool) ntfOpenMainInterface;

@end

NS_ASSUME_NONNULL_END
