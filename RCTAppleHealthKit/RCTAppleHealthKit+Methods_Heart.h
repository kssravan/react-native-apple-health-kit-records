//
//  RCTAppleHealthKit+Methods_Fitness.h
//  RCTAppleHealthKit
//
//  Created by Greg Wilson on 2016-06-26.
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

#import "RCTAppleHealthKit.h"

@interface RCTAppleHealthKit (Methods_Heart)

- (void)heart_getBloodPressureSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)heart_getHeartRateSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)heart_getHeartRateVariabilitySamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)heart_getRestingHeartRateSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)heart_getWalkingHeartRateAverageSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)heart_getOxygenSaturationSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)heart_getPeripheralPerfusionIndexSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;


@end
