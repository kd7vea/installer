//
//  Service+CoreDataProperties.m
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/24/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Service+CoreDataProperties.h"

@implementation Service (CoreDataProperties)

@dynamic serviceNumber;
@dynamic address;
@dynamic city;
@dynamic state;
@dynamic zipCode;
@dynamic endTime;
@dynamic startTime;
@dynamic servicePerformed;
@dynamic parts;
@dynamic mileage;

@end
