//
//  ServivceController.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/18/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Service.h"


@interface ServiceController : NSObject

@property(nonatomic, retain)NSArray *services;

+ (ServiceController *)sharedInstance;

-(Service *)createServiceWithserviceNumber:(NSNumber *)serviceNumber address:(NSString *)adress city:(NSString *) city state:(NSString *)state zipCode:(NSNumber *)zipCode startTime:(NSDate *)startTime endTime:(NSDate *)endTime servicePerformed:(NSString *)servicePerformed parts:(NSString *)parts mileage:(NSNumber *)mileage;

@end
