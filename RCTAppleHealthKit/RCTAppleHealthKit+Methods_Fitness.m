//
//  RCTAppleHealthKit+Methods_Fitness.m
//  RCTAppleHealthKit
//
//  Created by Greg Wilson on 2016-06-26.
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

#import "RCTAppleHealthKit+Methods_Fitness.h"
#import "RCTAppleHealthKit+Queries.h"
#import "RCTAppleHealthKit+Utils.h"

#import <React/RCTBridgeModule.h>
#import <React/RCTEventDispatcher.h>

@implementation RCTAppleHealthKit (Methods_Fitness)


- (void)fitness_getSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    HKUnit *unit = [RCTAppleHealthKit hkUnitFromOptions:input key:@"unit" withDefault:[HKUnit countUnit]];
    NSUInteger limit = [RCTAppleHealthKit uintFromOptions:input key:@"limit" withDefault:HKObjectQueryNoLimit];
    BOOL ascending = [RCTAppleHealthKit boolFromOptions:input key:@"ascending" withDefault:false];
    NSString *type = [RCTAppleHealthKit stringFromOptions:input key:@"type" withDefault:@"Walking"];
    NSDate *startDate = [RCTAppleHealthKit dateFromOptions:input key:@"startDate" withDefault:[NSDate date]];
    NSDate *endDate = [RCTAppleHealthKit dateFromOptions:input key:@"endDate" withDefault:[NSDate date]];
    
    NSPredicate *predicate = [HKQuery predicateForSamplesWithStartDate:startDate endDate:endDate options:HKQueryOptionStrictStartDate];
    
    HKSampleType *samplesType = [RCTAppleHealthKit hkQuantityTypeFromString:type];
    if ([type isEqual:@"Running"] || [type isEqual:@"Cycling"]) {
        unit = [HKUnit mileUnit];
    }
    NSLog(@"error getting samples: %@", [samplesType identifier]);
    [self fetchSamplesOfType:samplesType
                                unit:unit
                           predicate:predicate
                           ascending:ascending
                               limit:limit
                          completion:^(NSArray *results, NSError *error) {
                              if(results){
                                  callback(@[[NSNull null], results]);
                                  return;
                              } else {
                                  NSLog(@"error getting samples: %@", error);
                                  callback(@[RCTMakeError(@"error getting samples", nil, nil)]);
                                  return;
                              }
                          }];
}

- (void)fitness_setObserver:(NSDictionary *)input
{
    HKUnit *unit = [RCTAppleHealthKit hkUnitFromOptions:input key:@"unit" withDefault:[HKUnit countUnit]];
    NSString *type = [RCTAppleHealthKit stringFromOptions:input key:@"type" withDefault:@"Walking"];
    
    HKSampleType *samplesType = [RCTAppleHealthKit hkQuantityTypeFromString:type];
    if ([type isEqual:@"Running"] || [type isEqual:@"Cycling"]) {
        unit = [HKUnit mileUnit];
    }
    
    [self setObserverForType:samplesType unit:unit];
}

- (void)fitness_initializeStepEventObserver:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    HKSampleType *sampleType =
    [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierStepCount];

    HKObserverQuery *query =
    [[HKObserverQuery alloc]
     initWithSampleType:sampleType
     predicate:nil
     updateHandler:^(HKObserverQuery *query,
                     HKObserverQueryCompletionHandler completionHandler,
                     NSError *error) {

         if (error) {
             callback(@[RCTJSErrorFromNSError(error)]);
             return;
         }

          [self.bridge.eventDispatcher sendAppEventWithName:@"change:steps"
                                                       body:@{@"name": @"change:steps"}];

         // If you have subscribed for background updates you must call the completion handler here.
         // completionHandler();

     }];

    [self.healthStore executeQuery:query];
}


- (void)fitness_getDistanceWalkingRunningOnDay:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    HKUnit *unit = [RCTAppleHealthKit hkUnitFromOptions:input key:@"unit" withDefault:[HKUnit meterUnit]];
    NSDate *date = [RCTAppleHealthKit dateFromOptions:input key:@"date" withDefault:[NSDate date]];

    HKQuantityType *quantityType = [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierDistanceWalkingRunning];

    [self fetchSumOfSamplesOnDayForType:quantityType unit:unit day:date completion:^(double distance, NSDate *startDate, NSDate *endDate, NSError *error) {
        if (!distance) {
            callback(@[RCTJSErrorFromNSError(error)]);
            return;
        }

        NSDictionary *response = @{
                @"value" : @(distance),
                @"startDate" : [RCTAppleHealthKit buildISO8601StringFromDate:startDate],
                @"endDate" : [RCTAppleHealthKit buildISO8601StringFromDate:endDate],
        };


        callback(@[[NSNull null], response]);
    }];
}





@end
