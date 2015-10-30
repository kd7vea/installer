//
//  InventoryItem+CoreDataProperties.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/22/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "InventoryItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface InventoryItem (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *partName;
@property (nullable, nonatomic, retain) NSNumber *quantity;

@end

NS_ASSUME_NONNULL_END
