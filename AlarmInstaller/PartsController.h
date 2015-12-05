//
//  PartsController.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 12/2/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Service.h"
#import "InventoryItem+CoreDataProperties.h"

@interface PartsController : NSObject


@property (nullable, nonatomic, retain)NSArray *parts;
@property (nullable, nonatomic, retain)NSString *partName;
@property (nullable, nonatomic, retain)NSNumber *quantity;

+ (PartsController *)sharedInstance;

-(InventoryItem *)createPartsWithpartName:(NSString *)partName quantity:(NSNumber *)quantity;


@end
