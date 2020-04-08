//
//  RCTAppleHealthKit+Methods_Mindfulness.h
//  RCTAppleHealthKit
//
//

#import "RCTAppleHealthKit.h"

@interface RCTAppleHealthKit (Methods_Respiratory)

- (void)respiratory_getRespiratoryRateSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)respiratory_getForcedExpiratoryVolumeSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)respiratory_getForcedVitalCapacitySamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)respiratory_getInhalerUsageSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)respiratory_getPeakExpiratoryFlowRateSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)respiratory_getVO2MaxSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;

@end
