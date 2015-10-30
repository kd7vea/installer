//
//  ServiceEntry.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/17/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface ServiceEntry : NSObject

@property(nonatomic, retain)NSString *serviceNumber;
@property(nonatomic, retain)NSString *address;
@property(nonatomic, retain)NSString *city;
@property(nonatomic, retain)NSString *state;
@property(nonatomic, retain)NSNumber *zipCode;
@property(nonatomic, retain)NSDate *startTime;
@property(nonatomic, retain)NSDate *endTime;
@property(nonatomic, retain)NSString *servicePerformed;
@property(nonatomic, retain)NSNumber *mileage;
@property(nonatomic, retain)NSString *parts;

@end
