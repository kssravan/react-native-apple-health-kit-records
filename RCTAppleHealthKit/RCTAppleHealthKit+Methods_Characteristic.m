//
//  RCTAppleHealthKit+Methods_Characteristic.m
//  RCTAppleHealthKit
//
//  Created by Greg Wilson on 2016-06-29.
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

#import "RCTAppleHealthKit+Methods_Characteristic.h"
#import "RCTAppleHealthKit+Utils.h"

@implementation RCTAppleHealthKit (Methods_Characteristic)


- (void)characteristic_getBiologicalSex:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback {
    NSError *error;
    HKBiologicalSexObject *bioSex = [self.healthStore biologicalSexWithError:&error];
    NSString *value;

    switch (bioSex.biologicalSex) {
        case HKBiologicalSexNotSet:
            value = @"unknown";
            break;
        case HKBiologicalSexFemale:
            value = @"female";
            break;
        case HKBiologicalSexMale:
            value = @"male";
            break;
        case HKBiologicalSexOther:
            value = @"other";
            break;
    }

    if(value == nil){
        callback(@[RCTJSErrorFromNSError(error)]);
        return;
    }

    NSDictionary *response = @{
            @"value" : value,
    };

    callback(@[[NSNull null], response]);
}


- (void)characteristic_getDateOfBirth:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback {
    NSError *error;
    NSDate *dob = [self.healthStore dateOfBirthWithError:&error];

    if(error != nil){
        callback(@[RCTJSErrorFromNSError(error)]);
        return;
    }
    if(dob == nil) {
        NSDictionary *response = @{
                                   @"value" : [NSNull null],
                                   @"age" : [NSNull null]
                                   };
        callback(@[[NSNull null], response]);
        return;
    }

    NSString *dobString = [RCTAppleHealthKit buildISO8601StringFromDate:dob];

    NSDate *now = [NSDate date];
    NSDateComponents *ageComponents = [[NSCalendar currentCalendar] components:NSCalendarUnitYear fromDate:dob toDate:now options:NSCalendarWrapComponents];
    NSUInteger ageInYears = ageComponents.year;

    NSDictionary *response = @{
            @"value" : dobString,
            @"age" : @(ageInYears),
    };

    callback(@[[NSNull null], response]);
}


- (void)characteristic_getFitzpatrickSkinType:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback {
    NSError *error;
    HKFitzpatrickSkinType * skinType = [self.healthStore fitzpatrickSkinTypeWithError:&error];
    NSString *value;

    switch (skinType.HKFitzpatrickSkinType) {
        case HKFitzpatrickSkinTypeNotSet:
            value = @"Either the user’s skin type is not set, or the user has not granted your app permission to read the skin type.";
            break;
        case HKFitzpatrickSkinTypeI:
            value = @"Pale white skin that always burns easily in the sun and never tans.";
            break;
        case HKFitzpatrickSkinTypeII:
            value = @"White skin that burns easily and tans minimally.";
            break;
        case HKFitzpatrickSkinTypeIII:
            value = @"White to light brown skin that burns moderately and tans uniformly.";
            break;
        case HKFitzpatrickSkinTypeIV:
            value = @"Beige-olive, lightly tanned skin that burns minimally and tans moderately.";
            break;
        case HKFitzpatrickSkinTypeV:
            value = @"Brown skin that rarely burns and tans profusely.";
            break;
        case HKFitzpatrickSkinTypeVI:
            value = @"Dark brown to black skin that never burns and tans profusely.";
            break;
    }

    if(value == nil){
        callback(@[RCTJSErrorFromNSError(error)]);
        return;
    }

    NSDictionary *response = @{
            @"value" : value,
    };

    callback(@[[NSNull null], response]);
}


- (void)characteristic_getBloodType:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback {
    NSError *error;
    HKBloodType * bloodType = [self.healthStore bloodTypeWithError:&error];
    NSString *value;

    switch (bloodType.HKFitzpatrickSkinType) {
        case HKBloodTypeNotSet:
            value = @"Unknown";
            break;
        case HKBloodTypeAPositive:
            value = @"A+";
            break;
        case HKBloodTypeANegative:
            value = @"A-";
            break;
        case HKBloodTypeBPositive:
            value = @"B+";
            break;
        case HKBloodTypeBNegative:
            value = @"B-";
            break;
        case HKBloodTypeABPositive:
            value = @"AB+";
            break;
        case HKBloodTypeABNegative:
            value = @"AB-";
            break;        
        case HKBloodTypeOPositive:
            value = @"O+";
            break;        
        case HKBloodTypeONegative:
            value = @"O-";
            break;
    }

    if(value == nil){
        callback(@[RCTJSErrorFromNSError(error)]);
        return;
    }

    NSDictionary *response = @{
            @"value" : value,
    };

    callback(@[[NSNull null], response]);
}

- (void)characteristic_getWheelChairUse:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback {
    NSError *error;
    HKWheelchairUse * wheelChairUse = [self.healthStore wheelchairUseWithError:&error];
    NSString *value;

    switch (wheelChairUse) {
            HKWheelchairUseNotSet = 0,
            HKWheelchairUseNo,
            HKWheelchairUseYes,

            
        case HKWheelchairUseNotSet:
            value = @"Unknown";
            break;
        case HKWheelchairUseNo:
            value = @"No;
            break;
        case HKWheelchairUseYes:
            value = @"Yes;
            break;
    }

    if(value == nil){
        callback(@[RCTJSErrorFromNSError(error)]);
        return;
    }

    NSDictionary *response = @{
            @"value" : value,
    };

    callback(@[[NSNull null], response]);
}



@end
