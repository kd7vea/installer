//
//  Service+CoreDataProperties.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 12/2/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Service.h"

NS_ASSUME_NONNULL_BEGIN

@interface Service (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *address;
@property (nullable, nonatomic, retain) NSString *city;
@property (nullable, nonatomic, retain) NSDate *endTime;
@property (nullable, nonatomic, retain) NSNumber *mileage;
@property (nullable, nonatomic, retain) NSString *parts;
@property (nullable, nonatomic, retain) NSNumber *serviceNumber;
@property (nullable, nonatomic, retain) NSString *servicePerformed;
@property (nullable, nonatomic, retain) NSDate *startTime;
@property (nullable, nonatomic, retain) NSString *state;
@property (nullable, nonatomic, retain) NSNumber *zipCode;

@end

NS_ASSUME_NONNULL_END
