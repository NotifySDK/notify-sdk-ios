#import <Foundation/Foundation.h>

#define __NTFLogPrivate(level, format, ...) if (NTFLogger.logLevel >= level) { \
                                                [NTFLogger logMessage:level \
                                                                 file:@(__FILE__).lastPathComponent \
                                                               method:@(__FUNCTION__) \
                                                              message:format, ##__VA_ARGS__]; \
                                            }

#define NTFLogFatal(format, ...) __NTFLogPrivate(NTFLoggerLogLevelFatal, format, ##__VA_ARGS__)
#define NTFLogError(format, ...) __NTFLogPrivate(NTFLoggerLogLevelError, format, ##__VA_ARGS__)
#define NTFLogWarn(format, ...) __NTFLogPrivate(NTFLoggerLogLevelWarn, format, ##__VA_ARGS__)
#define NTFLogInfo(format, ...) __NTFLogPrivate(NTFLoggerLogLevelInfo, format, ##__VA_ARGS__)
#define NTFLogDebug(format, ...) __NTFLogPrivate(NTFLoggerLogLevelDebug, format, ##__VA_ARGS__)
#define NTFLogTrace(format, ...) __NTFLogPrivate(NTFLoggerLogLevelTrace, format, ##__VA_ARGS__)

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

@property (nonatomic, class, assign) NTFLoggerLogLevel logLevel;

@end

NS_ASSUME_NONNULL_END
