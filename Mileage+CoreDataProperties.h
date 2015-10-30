//
//  Mileage+CoreDataProperties.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/22/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Mileage.h"

NS_ASSUME_NONNULL_BEGIN

@interface Mileage (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *mileage;
@property (nullable, nonatomic, retain) NSNumber *oldMileage;
@property (nullable, nonatomic, retain) NSString *business;
@property (nullable, nonatomic, retain) NSString *personal;
@property (nullable, nonatomic, retain) NSDate *timeStamp;

@end

NS_ASSUME_NONNULL_END
