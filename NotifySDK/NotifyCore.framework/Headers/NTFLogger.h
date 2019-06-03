#import <Foundation/Foundation.h>

#define NTFLogFatal(...) [NTFLogger logMessage:NTFLoggerLogLevelFatal \
                                          file:@(__FILE__).lastPathComponent \
                                        method:@(__FUNCTION__) \
                                       message:__VA_ARGS__];

#define NTFLogError(...) [NTFLogger logMessage:NTFLoggerLogLevelError \
                                          file:@(__FILE__).lastPathComponent \
                                        method:@(__FUNCTION__) \
                                       message:__VA_ARGS__];

#define NTFLogWarn(...) [NTFLogger logMessage:NTFLoggerLogLevelWarn \
                                         file:@(__FILE__).lastPathComponent \
                                       method:@(__FUNCTION__) \
                                      message:__VA_ARGS__];

#define NTFLogInfo(...) [NTFLogger logMessage:NTFLoggerLogLevelInfo \
                                         file:@(__FILE__).lastPathComponent \
                                       method:@(__FUNCTION__) \
                                      message:__VA_ARGS__];

#define NTFLogDebug(...) [NTFLogger logMessage:NTFLoggerLogLevelDebug \
                                          file:@(__FILE__).lastPathComponent \
                                        method:@(__FUNCTION__) \
                                       message:__VA_ARGS__];

#define NTFLogTrace(...) [NTFLogger logMessage:NTFLoggerLogLevelTrace \
                                          file:@(__FILE__).lastPathComponent \
                                        method:@(__FUNCTION__) \
                                       message:__VA_ARGS__];

typedef NS_ENUM(NSInteger, NTFLoggerLogLevel) {
    NTFLoggerLogLevelNone,
    NTFLoggerLogLevelFatal,
    NTFLoggerLogLevelError,
    NTFLoggerLogLevelWarn,
    NTFLoggerLogLevelInfo,
    NTFLoggerLogLevelDebug,
    NTFLoggerLogLevelTrace,
    NTFLoggerLogLevelAll
};

NS_ASSUME_NONNULL_BEGIN

@interface NTFLogger : NSObject

+(instancetype)new NS_UNAVAILABLE;
-(instancetype)init NS_UNAVAILABLE;

+ (void)logMessage:(NTFLoggerLogLevel)level
              file:(NSString *)file
            method:(NSString *)method
           message:(NSString *)message, ...;

+ (void)enableFilter:(nullable NSPredicate *)filePredicate
     methodPredicate:(nullable NSPredicate *)methodPredicate;

+ (void)removeFilter;

+ (void)setLogLevel:(NTFLoggerLogLevel)logLevel;

@end

NS_ASSUME_NONNULL_END
