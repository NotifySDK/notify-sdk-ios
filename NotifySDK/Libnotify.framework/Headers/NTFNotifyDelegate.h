#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol NTFNotifyDelegate <NSObject>

/**
 This method is called when user select action open_main
 on landing. It's called in main thread.
 */
- (bool) ntfOpenMainInterface;

@optional

/**
 You can implement this method in your class.
 All incoming pushes with url will be tried to open url with this method.
 If your implementation returns true handling of url will be completed else
 logic will call method -[UIApplication openUrl:].
 */
- (bool)openURL:(NSURL *)url;

@end

NS_ASSUME_NONNULL_END
