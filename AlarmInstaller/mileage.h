//
//  mileage.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/18/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ServiceEntry.h"

@interface Mileage : NSObject

@property(nonatomic, retain)NSNumber *mileage;
@property(nonatomic, retain)NSNumber *oldMileage;
@property(nonatomic, retain)NSString *business;
@property(nonatomic, retain)NSString *personal;
@property(nonatomic, retain)NSDate *timeStamp;

@end
