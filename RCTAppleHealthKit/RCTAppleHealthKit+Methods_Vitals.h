#import "RCTAppleHealthKit.h"

@interface RCTAppleHealthKit (Methods_Vitals)


- (void)vitals_getRespiratoryRateSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;

- (void)vitals_getHeartBeatSeriesSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;

@end
