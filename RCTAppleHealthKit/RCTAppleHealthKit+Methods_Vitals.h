#import "RCTAppleHealthKit.h"

@interface RCTAppleHealthKit (Methods_Vitals)

- (void)vitals_getHeartRateSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)vitals_getLowHeartRateSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)vitals_getHighHeartRateSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)vitals_getIrregularHeartRateSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;

- (void)vitals_getBloodPressureSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)vitals_getRespiratoryRateSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)vitals_getRestingHeartRateSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)vitals_getHeartRateVariabilitySamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)vitals_getWalkingHeartRateAverageSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)vitals_getOxygenSaturationSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;

- (void)vitals_getHeartBeatSeriesSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;

@end
