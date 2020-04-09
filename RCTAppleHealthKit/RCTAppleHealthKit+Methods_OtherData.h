
#import "RCTAppleHealthKit.h"

@interface RCTAppleHealthKit (Methods_OtherData)


- (void)otherData_getBloodAlcoholContentSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)otherData_getBloodGlucoseSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)otherData_getInsulinDeliverySamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)otherData_getNumberOfTimesFallenSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)otherData_getSexualActivitySamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)otherData_getToothbrushingEventSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)otherData_getUVExposureSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;

@end
