//
//  ServivceController.m
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/18/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import "ServiceController.h"
#import "Stack.h"


@interface ServiceController ()

@end


@implementation ServiceController

+ (ServiceController *)sharedInstance {
    static ServiceController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [ServiceController new];
    });
    return sharedInstance;
}
//create method

-(Service *)createServiceWithserviceNumber:(NSNumber *)serviceNumber address:(NSString *)address city:(NSString *) city state:(NSString *)state zipCode:(NSNumber *)zipCode startTime:(NSDate *)startTime endTime:(NSDate *)endTime servicePerformed:(NSString *)servicePerformed parts:(NSString *)parts mileage:(NSNumber *)mileage{
    Service *service = [NSEntityDescription insertNewObjectForEntityForName:@"Service" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    service.serviceNumber = serviceNumber;
    service.address = address;
    service.city = city;
    service.state = state;
    service.zipCode = zipCode;
    service.startTime = startTime;
    service.endTime = endTime;
    service.servicePerformed = servicePerformed;
    service.parts = parts;
    service.mileage = mileage;
    
    //this line calls the saveToPersistentStorageMethod(CRUD Update Method)
    [self saveToPersistentStorage];
    return service;
}


//read method
-(NSArray *)services {
    NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:@"service"];
    
    NSArray *fetchedObjects = [[Stack sharedInstance].managedObjectContext executeFetchRequest:fetchRequest error:nil];

    return fetchedObjects;
}


//updateMethod
-(void)saveToPersistentStorage {
     [[Stack sharedInstance].managedObjectContext save:nil];
}


//delete Method
-(void)removeService:(Service *)service{
    [service.managedObjectContext deleteObject:service];
}

@end
