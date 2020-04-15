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
    if (@available(iOS 12.0, *)) {
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
    } else {
        // Fallback on earlier versions
        callback(@[RCTMakeError(@"error getting allergies", nil, nil)]);
    }
}


- (void)condition_getConditionRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    if (@available(iOS 12.0, *)) {
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
    } else {
        // Fallback on earlier versions
        callback(@[RCTMakeError(@"error getting conditions", nil, nil)]);
    }
}


- (void)immunization_getImmunizationRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    if (@available(iOS 12.0, *)) {
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
    } else {
        // Fallback on earlier versions
        callback(@[RCTMakeError(@"error getting immunizations", nil, nil)]);
    }
}


- (void)medication_getMedicationRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    if (@available(iOS 12.0, *)) {
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
    } else {
        // Fallback on earlier versions
        callback(@[RCTMakeError(@"error getting medications", nil, nil)]);
    }
}


- (void)procedure_getProcedureRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    if (@available(iOS 12.0, *)) {
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
    } else {
        // Fallback on earlier versions
        callback(@[RCTMakeError(@"error getting procedures", nil, nil)]);
    }
}


- (void)clinicalVitals_getClinicalVitalsRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    if (@available(iOS 12.0, *)) {
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
    } else {
        // Fallback on earlier versions
        callback(@[RCTMakeError(@"error getting clinical vitals", nil, nil)]);
    }
}


- (void)lab_getLabRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    if (@available(iOS 12.0, *)) {
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
    } else {
        // Fallback on earlier versions
        callback(@[RCTMakeError(@"error getting lab records", nil, nil)]);
    }
}






@end
