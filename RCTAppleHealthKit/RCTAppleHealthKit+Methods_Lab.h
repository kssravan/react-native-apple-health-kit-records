//
//  RCTAppleHealthKit+Methods_Activity.h
//  RCTAppleHealthKit
//
//  Created by Alexander Vallorosi on 4/27/17.
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

#import "RCTAppleHealthKit.h"

@interface RCTAppleHealthKit (Methods_Lab)

- (void)allergy_getAllergyRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)condition_getConditionRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)immunization_getImmunizationRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)medication_getMedicationRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)procedure_getProcedureRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)clinicalVitals_getClinicalVitalsRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;

- (void)lab_getLabRecords:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;

@end
