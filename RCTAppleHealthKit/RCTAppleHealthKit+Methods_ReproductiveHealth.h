
#import "RCTAppleHealthKit.h"

@interface RCTAppleHealthKit (Methods_ReproductiveHealth)

- (void)reproductiveHealth_getIntermenstrualBleedingSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)reproductiveHealth_getMenstruationFlowSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)reproductiveHealth_getOvulationTestResultSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;

@end
