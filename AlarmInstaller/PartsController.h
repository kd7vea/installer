//
//  PartsController.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 12/2/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Service.h"

@interface PartsController : NSObject


@property(nonatomic, retain)NSArray *parts;

+ (PartsController *)sharedInstance;

-(Parts *)createPartsWithpartName:(NSString *)partName quantity:(NSNumber *)quantity;


@end
