//
//  RCTAppleHealthKit+Methods_Activity.m
//  RCTAppleHealthKit
//
//  Created by Alexander Vallorosi on 4/27/17.
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.

#import "RCTAppleHealthKit+Methods_Lab.h"
#import "RCTAppleHealthKit+Queries.h"
#import "RCTAppleHealthKit+Utils.h"

@implementation RCTAppleHealthKit (Methods_Lab)


- (void)allergy_getAllergyRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    [self fetchHealthRecordData:[HKClinicalType clinicalTypeForIdentifier:HKClinicalTypeIdentifierAllergyRecord]
               predicate:nil
               ascending:false
              limit:HKObjectQueryNoLimit
                          completion:^(NSArray *results, NSError *error) {
                              if(results){
                                  callback(@[[NSNull null], results]);
                                  return;
                              } else {
                                  NSLog(@"error getting allergies: %@", error);
                                  callback(@[RCTMakeError(@"error getting allergies", nil, nil)]);
                                  return;
                              }
                          }];
}


- (void)condition_getConditionRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    [self fetchHealthRecordData:[HKClinicalType clinicalTypeForIdentifier:HKClinicalTypeIdentifierConditionRecord]
               predicate:nil
               ascending:false
                   limit:HKObjectQueryNoLimit
                          completion:^(NSArray *results, NSError *error) {
                              if(results){
                                  callback(@[[NSNull null], results]);
                                  return;
                              } else {
                                  NSLog(@"error getting allergies: %@", error);
                                  callback(@[RCTMakeError(@"error getting conditions", nil, nil)]);
                                  return;
                              }
                          }];
}


- (void)immunization_getImmunizationRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    [self fetchHealthRecordData:[HKClinicalType clinicalTypeForIdentifier:HKClinicalTypeIdentifierImmunizationRecord]
               predicate:nil
               ascending:false
                   limit:HKObjectQueryNoLimit
                          completion:^(NSArray *results, NSError *error) {
                              if(results){
                                  callback(@[[NSNull null], results]);
                                  return;
                              } else {
                                  NSLog(@"error getting allergies: %@", error);
                                  callback(@[RCTMakeError(@"error getting immunizations", nil, nil)]);
                                  return;
                              }
                          }];
}


- (void)medication_getMedicationRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    [self fetchHealthRecordData:[HKClinicalType clinicalTypeForIdentifier:HKClinicalTypeIdentifierMedicationRecord]
                 predicate:nil
                 ascending:false
                     limit:HKObjectQueryNoLimit
                          completion:^(NSArray *results, NSError *error) {
                              if(results){
                                  callback(@[[NSNull null], results]);
                                  return;
                              } else {
                                  NSLog(@"error getting allergies: %@", error);
                                  callback(@[RCTMakeError(@"error getting medications", nil, nil)]);
                                  return;
                              }
                          }];
}


- (void)procedure_getProcedureRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    [self fetchHealthRecordData:[HKClinicalType clinicalTypeForIdentifier:HKClinicalTypeIdentifierProcedureRecord]
               predicate:nil
               ascending:false
                   limit:HKObjectQueryNoLimit
                          completion:^(NSArray *results, NSError *error) {
                              if(results){
                                  callback(@[[NSNull null], results]);
                                  return;
                              } else {
                                  NSLog(@"error getting allergies: %@", error);
                                  callback(@[RCTMakeError(@"error getting procedures", nil, nil)]);
                                  return;
                              }
                          }];
}


- (void)clinicalVitals_getClinicalVitalsRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    [self fetchHealthRecordData:[HKClinicalType clinicalTypeForIdentifier:HKClinicalTypeIdentifierVitalSignRecord]
               predicate:nil
               ascending:false
                   limit:HKObjectQueryNoLimit
                          completion:^(NSArray *results, NSError *error) {
                              if(results){
                                  callback(@[[NSNull null], results]);
                                  return;
                              } else {
                                  NSLog(@"error getting allergies: %@", error);
                                  callback(@[RCTMakeError(@"error getting clinical vitals", nil, nil)]);
                                  return;
                              }
                          }];
}


- (void)lab_getLabRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    [self fetchHealthRecordData:[HKClinicalType clinicalTypeForIdentifier:HKClinicalTypeIdentifierLabResultRecord]
                    predicate:nil
                    ascending:false
                        limit:HKObjectQueryNoLimit
                          completion:^(NSArray *results, NSError *error) {
                              if(results){
                                  callback(@[[NSNull null], results]);
                                  return;
                              } else {
                                  NSLog(@"error getting allergies: %@", error);
                                  callback(@[RCTMakeError(@"error getting lab records", nil, nil)]);
                                  return;
                              }
                          }];
}



- (void)lab_getBloodGlucoseSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    HKQuantityType *bloodGlucoseType = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodGlucose];

    HKUnit *mmoLPerL = [[HKUnit moleUnitWithMetricPrefix:HKMetricPrefixMilli molarMass:HKUnitMolarMassBloodGlucose] unitDividedByUnit:[HKUnit literUnit]];

    HKUnit *unit = [RCTAppleHealthKit hkUnitFromOptions:input key:@"unit" withDefault:mmoLPerL];
    NSUInteger limit = [RCTAppleHealthKit uintFromOptions:input key:@"limit" withDefault:HKObjectQueryNoLimit];
    BOOL ascending = [RCTAppleHealthKit boolFromOptions:input key:@"ascending" withDefault:false];
    NSDate *startDate = [RCTAppleHealthKit dateFromOptions:input key:@"startDate" withDefault:nil];
    NSDate *endDate = [RCTAppleHealthKit dateFromOptions:input key:@"endDate" withDefault:[NSDate date]];
    if(startDate == nil){
        callback(@[RCTMakeError(@"startDate is required in options", nil, nil)]);
        return;
    }
    NSPredicate * predicate = [RCTAppleHealthKit predicateForSamplesBetweenDates:startDate endDate:endDate];

    [self fetchQuantitySamplesOfType:bloodGlucoseType
                                unit:unit
                           predicate:predicate
                           ascending:ascending
                               limit:limit
                          completion:^(NSArray *results, NSError *error) {
        if(results){
            callback(@[[NSNull null], results]);
            return;
        } else {
            callback(@[RCTJSErrorFromNSError(error)]);
            return;
        }
    }];
}



@end
