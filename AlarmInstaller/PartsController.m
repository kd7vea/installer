//
//  PartsController.m
//  AlarmInstaller
//
//  Created by Jake Estepp on 12/2/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import "PartsController.h"
#import "Stack.h"

@interface PartsController()

@end

@implementation PartsController

+ (PartsController *)sharedInstance {
    static PartsController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [PartsController new];
    });
    return sharedInstance;
}

-(Parts *)(id)createPartsWithpartName:(NSString *)partName quantity:(NSNumber *)quantity{
    Parts *parts = [NSEntityDescription insertNewObjectForEntityForName:@"Parts" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    parts.partName = partName;
    parts.quantity = quantity;
    
    
    //this line calls the saveToPersistentStorageMethod(CRUD Update Method)
    [self saveToPersistentStorage];
    return parts;
}

@end

