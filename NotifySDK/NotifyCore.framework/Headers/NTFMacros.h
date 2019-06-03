#import <Foundation/Foundation.h>

#ifdef __cplusplus
#define NTF_EXTERN extern "C" __attribute__((visibility ("default")))
#else
#define NTF_EXTERN extern __attribute__((visibility ("default")))
#endif

#define NTF_PROF_BEGIN   { NSDate *startTime = [NSDate date];
#define NTF_PROF_END   NSLog(@"Time: %f", -[startTime timeIntervalSinceNow]); }

#define NTF_PROF_BEGIN_AVR(NUM)  { NSTimeInterval averageTime = 0; for (int i = 0; i < NUM; i++) { NSDate *startTime = [NSDate date];
#define NTF_PROF_END_AVR(NUM)   averageTime += -[startTime timeIntervalSinceNow]; } averageTime /= NUM; NSLog(@"Time(avr): %f", averageTime); }



