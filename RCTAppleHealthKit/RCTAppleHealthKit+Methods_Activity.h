//
//  RCTAppleHealthKit+Methods_Activity.h
//  RCTAppleHealthKit
//
//  Created by Alexander Vallorosi on 4/27/17.
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

#import "RCTAppleHealthKit.h"

@interface RCTAppleHealthKit (Methods_Activity)

- (void)activity_getActiveEnergyBurned:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)activity_getActiveEnergyDailySamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)activity_getDailyDistanceCyclingSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)activity_getDailyFlightsClimbedSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)activity_getRestingEnergySamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)activity_getBasalEnergyBurned:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)activity_getDailyStepSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)activity_getDailyDistanceSwimmingSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)activity_getDailyDistanceWheelChairSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)activity_getDailyDistanceWalkingRunningSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)activity_getDailyPushCountSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)activity_getDailyExcersizeTimeSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;

@end
