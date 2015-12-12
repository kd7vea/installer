//
//  ServiceParts.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 12/12/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class InventoryItem, Service;

NS_ASSUME_NONNULL_BEGIN

@interface ServiceParts : NSManagedObject

// Insert code here to declare functionality of your managed object subclass

@end

NS_ASSUME_NONNULL_END

#import "ServiceParts+CoreDataProperties.h"
