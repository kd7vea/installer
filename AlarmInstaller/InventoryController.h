//
//  InventoryController.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/21/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ServiceController.h"

@interface InventoryController : NSObject

@property(nonatomic, strong) NSArray *parts;


-(void) updateWithPartName: (NSString *)name toAmount:(NSNumber *)number;
+ (InventoryController *)sharedInstance;
-(void) createInitialInventory;

@end
