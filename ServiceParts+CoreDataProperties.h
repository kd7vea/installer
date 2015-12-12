//
//  ServiceParts+CoreDataProperties.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 12/12/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "ServiceParts.h"

NS_ASSUME_NONNULL_BEGIN

@interface ServiceParts (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *quanitity;
@property (nullable, nonatomic, retain) Service *service;
@property (nullable, nonatomic, retain) InventoryItem *part;

@end

NS_ASSUME_NONNULL_END
