//
//  InventoryInfo.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/18/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ServiceEntry.h"

@interface InventoryInfo : NSObject

@property(nonatomic, strong)NSString *partName;
@property(nonatomic, retain)NSNumber *quantity;

@end
