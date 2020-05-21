//
//  RCTAppleHealthKit+TypesAndPermissions.h
//  RCTAppleHealthKit
//
//  Created by Greg Wilson on 2016-06-26.
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

#import "RCTAppleHealthKit.h"

@interface RCTAppleHealthKit (TypesAndPermissions)

- (NSSet *)getReadPermsFromOptions:(NSArray *)options;
- (nullable HKObjectType *)getReadPermFromText:(nonnull NSString*)key;
- (NSSet *)getWritePermsFromOptions:(NSArray *)options;
- (HKObjectType *)getWritePermFromString:(NSString *)string;
- (NSString *)getAuthorizationStatusString:(HKAuthorizationStatus)status;

@end
