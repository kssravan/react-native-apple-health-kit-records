//
//  RCTAppleHealthKit.m
//  RCTAppleHealthKit
//
//  Created by Greg Wilson on 2016-06-26.
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

#import "RCTAppleHealthKit.h"
#import "RCTAppleHealthKit+TypesAndPermissions.h"

#import "RCTAppleHealthKit+Methods_Activity.h"
#import "RCTAppleHealthKit+Methods_Body.h"
#import "RCTAppleHealthKit+Methods_Fitness.h"
#import "RCTAppleHealthKit+Methods_Dietary.h"
#import "RCTAppleHealthKit+Methods_Characteristic.h"
#import "RCTAppleHealthKit+Methods_Vitals.h"
#import "RCTAppleHealthKit+Methods_Mindfulness.h"
#import "RCTAppleHealthKit+Methods_Lab.h"
#import "RCTAppleHealthKit+Methods_ReproductiveHealth.h"
#import "RCTAppleHealthKit+Methods_Respiratory.h"
#import "RCTAppleHealthKit+Methods_OtherData.h"

#import "RCTAppleHealthKit+Methods_Heart.h"

#import <React/RCTBridgeModule.h>
#import <React/RCTEventDispatcher.h>

@implementation RCTAppleHealthKit

@synthesize bridge = _bridge;

RCT_EXPORT_MODULE();

#pragma mark - initalization

RCT_EXPORT_METHOD(isAvailable:(RCTResponseSenderBlock)callback)
{
    [self isHealthKitAvailable:callback];
}

RCT_EXPORT_METHOD(initHealthKit:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self initializeHealthKit:input callback:callback];
}

RCT_EXPORT_METHOD(initStepCountObserver:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self fitness_initializeStepEventObserver:input callback:callback];
}

#pragma mark - Characteristic

RCT_EXPORT_METHOD(getBiologicalSex:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self characteristic_getBiologicalSex:input callback:callback];
}

RCT_EXPORT_METHOD(getDateOfBirth:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self characteristic_getDateOfBirth:input callback:callback];
}

RCT_EXPORT_METHOD(getWheelChairUse:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self characteristic_getWheelChairUse:input callback:callback];
}

RCT_EXPORT_METHOD(getFitzpatrickSkinType:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self characteristic_getFitzpatrickSkinType:input callback:callback];
}

RCT_EXPORT_METHOD(getBloodType:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self characteristic_getBloodType:input callback:callback];
}


#pragma mark - Body Measurements

RCT_EXPORT_METHOD(getWeightSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self body_getWeightSamples:input callback:callback];
}


RCT_EXPORT_METHOD(getHeightSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self body_getHeightSamples:input callback:callback];
}


RCT_EXPORT_METHOD(getBmiSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self body_getBodyMassIndexSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getLeanBodyMassSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self body_getLeanBodyMassSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getBodyFatPercentageSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self body_getBodyFatPercentageSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getWaistCircumferenceSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self body_getWaistCircumferenceSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getBasalBodyTemperatureSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self body_getBasalBodyTemperatureSamples:input callback:callback];
}


RCT_EXPORT_METHOD(getBodyTemperatureSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self body_getBodyTemperatureSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getElectrodermalActivitySamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self body_getElectrodermalActivitySamples:input callback:callback];
}

#pragma mark - Heart

RCT_EXPORT_METHOD(getBloodPressureSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self heart_getBloodPressureSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getHeartRateSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self heart_getHeartRateSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getHeartRateVariabilitySamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self heart_getHeartRateVariabilitySamples:input callback:callback];
}

RCT_EXPORT_METHOD(getRestingHeartRateSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self heart_getRestingHeartRateSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getWalkingHeartRateAverageSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self heart_getWalkingHeartRateAverageSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getOxygenSaturationSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self heart_getOxygenSaturationSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getPeripheralPerfusionIndexSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self heart_getPeripheralPerfusionIndexSamples:input callback:callback];
}

#pragma mark - Respiratory


RCT_EXPORT_METHOD(getRespiratoryRateSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self respiratory_getRespiratoryRateSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getForcedExpiratoryVolumeSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self respiratory_getForcedExpiratoryVolumeSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getForcedVitalCapacitySamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self respiratory_getForcedVitalCapacitySamples:input callback:callback];
}

RCT_EXPORT_METHOD(getInhalerUsageSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self respiratory_getInhalerUsageSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getPeakExpiratoryFlowRateSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self respiratory_getPeakExpiratoryFlowRateSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getVO2MaxSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self respiratory_getVO2MaxSamples:input callback:callback];
}

#pragma mark - Other Data

RCT_EXPORT_METHOD(getBloodAlcoholContentSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self otherData_getBloodAlcoholContentSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getBloodGlucoseSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self otherData_getBloodGlucoseSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getInsulinDeliverySamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self otherData_getInsulinDeliverySamples:input callback:callback];
}

RCT_EXPORT_METHOD(getNumberOfTimesFallenSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self otherData_getNumberOfTimesFallenSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getSexualActivitySamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self otherData_getSexualActivitySamples:input callback:callback];
}

RCT_EXPORT_METHOD(getToothbrushingEventSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self otherData_getToothbrushingEventSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getUVExposureSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self otherData_getUVExposureSamples:input callback:callback];
}

#pragma mark - Activity

RCT_EXPORT_METHOD(getActiveEnergyBurned:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
   [self activity_getActiveEnergyBurned:input callback:callback];
}

RCT_EXPORT_METHOD(getActiveEnergyDailySamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
   [self activity_getActiveEnergyDailySamples:input callback:callback];
}

RCT_EXPORT_METHOD(getDailyDistanceCyclingSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self activity_getDailyDistanceCyclingSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getDailyFlightsClimbedSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self activity_getDailyFlightsClimbedSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getBasalEnergyDailySamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
   [self activity_getBasalEnergyBurned:input callback:callback];
}

RCT_EXPORT_METHOD(getDailyStepCountSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self activity_getDailyStepSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getDailyDistanceSwimmingSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self activity_getDailyDistanceSwimmingSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getDailyDistanceWheelChairSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self activity_getDailyDistanceWheelChairSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getDailyDistanceWalkingRunningSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self activity_getDailyDistanceWalkingRunningSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getPushCountSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self activity_getPushCountSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getDailyExcersizeTimeSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self activity_getDailyExcersizeTimeSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self activity_getSamples:input callback:callback];
}

RCT_EXPORT_METHOD(setObserver:(NSDictionary *)input)
{
    [self fitness_setObserver:input];
}




RCT_EXPORT_METHOD(getDistanceWalkingRunning:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self fitness_getDistanceWalkingRunningOnDay:input callback:callback];
}


RCT_EXPORT_METHOD(saveFood:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self saveFood:input callback:callback];
}

RCT_EXPORT_METHOD(saveWater:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self saveWater:input callback:callback];
}


RCT_EXPORT_METHOD(getSleepSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self mindfulness_getSleepSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getInfo:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self getModuleInfo:input callback:callback];
}

RCT_EXPORT_METHOD(saveMindfulSession:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self mindfulness_saveMindfulSession:input callback:callback];
}

RCT_EXPORT_METHOD(getMindfulSession:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self mindfulness_getMindfulSession:input callback:callback];
}

RCT_EXPORT_METHOD(getNutritionSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self dietary_getNutritionSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getMenstruationFlowSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self reproductiveHealth_getMenstruationFlowSamples:input callback:callback];
}

RCT_EXPORT_METHOD(getOvulationTestResultSamples:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self reproductiveHealth_getOvulationTestResultSamples:input callback:callback];
}





RCT_EXPORT_METHOD(getAllergyRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self allergy_getAllergyRecords:input callback:callback];
}
RCT_EXPORT_METHOD(getMedicationRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self medication_getMedicationRecords:input callback:callback];
}
RCT_EXPORT_METHOD(getConditionRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self condition_getConditionRecords:input callback:callback];
}
RCT_EXPORT_METHOD(getImmunizationRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self immunization_getImmunizationRecords:input callback:callback];
}
RCT_EXPORT_METHOD(getProcedureRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self procedure_getProcedureRecords:input callback:callback];
}
RCT_EXPORT_METHOD(getLabRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self lab_getLabRecords:input callback:callback];
}
RCT_EXPORT_METHOD(getClinicalVitalRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback)
{
    [self clinicalVitals_getClinicalVitalsRecords:input callback:callback];
}
// End Health Records

- (void)isHealthKitAvailable:(RCTResponseSenderBlock)callback
{
    BOOL isAvailable = NO;
    if ([HKHealthStore isHealthDataAvailable]) {
        isAvailable = YES;
    }
    callback(@[[NSNull null], @(isAvailable)]);
}


- (void)initializeHealthKit:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    self.healthStore = [[HKHealthStore alloc] init];

    if ([HKHealthStore isHealthDataAvailable]) {
        NSSet *writeDataTypes;
        NSSet *readDataTypes;

        // get permissions from input object provided by JS options argument
        NSDictionary* permissions =[input objectForKey:@"permissions"];
        if(permissions != nil){
            NSArray* readPermsArray = [permissions objectForKey:@"read"];
            NSArray* writePermsArray = [permissions objectForKey:@"write"];
            NSSet* readPerms = [self getReadPermsFromOptions:readPermsArray];
            NSSet* writePerms = [self getWritePermsFromOptions:writePermsArray];

            if(readPerms != nil) {
                readDataTypes = readPerms;
            }
            if(writePerms != nil) {
                writeDataTypes = writePerms;
            }
        } else {
            callback(@[RCTMakeError(@"permissions must be provided in the initialization options", nil, nil)]);
            return;
        }

        // make sure at least 1 read or write permission is provided
        if(!writeDataTypes && !readDataTypes){
            callback(@[RCTMakeError(@"at least 1 read or write permission must be set in options.permissions", nil, nil)]);
            return;
        }

        [self.healthStore requestAuthorizationToShareTypes:writeDataTypes readTypes:readDataTypes completion:^(BOOL success, NSError *error) {
            if (!success) {
                callback(@[RCTJSErrorFromNSError(error)]);
                return;
            } else {
                dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
                    callback(@[[NSNull null], @true]);
                });
            }
        }];
    } else {
        callback(@[RCTMakeError(@"HealthKit data is not available", nil, nil)]);
    }
}

RCT_EXPORT_METHOD(authorizationStatusForType:(NSString *)type
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject
{
    if (self.healthStore == nil) {
        self.healthStore = [[HKHealthStore alloc] init];
    }

    if ([HKHealthStore isHealthDataAvailable]) {
        HKObjectType *objectType = [self getWritePermFromString:type];
        if (objectType == nil) {
            reject(@"unknown write permission", nil, nil);
            return;
        }

        NSString *status = [self getAuthorizationStatusString:[self.healthStore authorizationStatusForType:objectType]];
        resolve(status);
    } else {
        reject(@"HealthKit data is not available", nil, nil);
    }
})

- (void)getModuleInfo:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    NSDictionary *info = @{
            @"name" : @"react-native-apple-healthkit",
            @"description" : @"A React Native bridge module for interacting with Apple HealthKit data",
            @"className" : @"RCTAppleHealthKit",
            @"author": @"Greg Wilson",
    };
    callback(@[[NSNull null], info]);
}

@end
