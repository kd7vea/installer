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

-(InventoryItem *)createPartsWithpartName:(NSString *)partName quantity:(NSNumber *)quantity{
    InventoryItem *parts = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    parts.partName = partName;
    parts.quantity = quantity;
    
    
    //this line calls the saveToPersistentStorageMethod(CRUD Update Method)
    [self saveToPersistentStorage];
    return parts;
}


//read method
-(NSArray *)parts {
    NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:@"InventoryItem"];
    
    NSArray *fetchedObjects = [[Stack sharedInstance].managedObjectContext executeFetchRequest:fetchRequest error:nil];
    
    return fetchedObjects;
}


//updateMethod
-(void)saveToPersistentStorage {
    [[Stack sharedInstance].managedObjectContext save:nil];
}


//delete Method
-(void)removeInventoryItem:(InventoryItem *)inventoryItem{
    [inventoryItem.managedObjectContext deleteObject:inventoryItem];
}

- (NSString *)partNameForInventoryItem:(inventoryList)item {
    switch (item) {
        case inventoryListGoControl:
            return @"GO Control";
            break;
        case inventoryListgc3:
            return @"GC3";
            break;
        case inventoryListVerizonCell:
            return @"Verizon";
            break;
        case inventoryListATandTCell:
            return @"AT&T";
            break;
        case inventoryListTHINDW:
            return @"Thin DW";
            break;
        case inventoryListrecessedDW:
            return @"Recessed DW";
            break;
        case inventoryListMotion:
            return @"Motion";
            break;
        case inventoryListGlassBreak:
            return @"GlassBreak";
            break;
        case inventoryListSmoke:
            return @"Smoke";
            break;
        case inventoryListCarbon:
            return @"Carbon";
            break;
        case inventoryListFireFighter:
            return @"Fire Fighter";
            break;
        case inventoryListMedPendant:
            return @"Med Pendant";
            break;
        case inventoryListKeyFOB:
            return @"Key FOB";
            break;
        case inventoryListSuperSwitch:
            return @"Super Switch";
            break;
        case inventoryListWirelessKeypad:
            return @"Wireless KeyPad";
            break;
        case inventoryListTS1Keypad:
            return @"TS1 Keypad";
            break;
        case inventoryListGDReceiver:
            return @"GD Receiver";
            break;
        case inventoryList900mhzTrans:
            return @"900mhz Receiver";
            break;
        case inventoryListGETakeover:
            return @"GE Takeover";
            break;
        case inventoryListImageSensor:
            return @"Image Sensor";
            break;
        case inventoryListHD100Camera:
            return @"HD100 Camera";
            break;
        case inventoryListDoorLockGold:
            return @"Door Lock Gold";
            break;
        case inventoryListDoorLockSilver:
            return @"Door Lock Silver";
            break;
        case inventoryListDoorLockbronze:
            return @"Door Lock Bronze";
            break;
        case inventoryListThermostat:
            return @"Thermostat";
            break;
        case inventoryListMyQGarage:
            return @"MyQ Garage";
            break;
        case inventoryListMyQExtraDoor:
            return @"MyQ Extra Door";
            break;
        case inventoryListDoorBell:
            return @"DoorBell";
            break;
        case inventoryListLampModule:
            return @"Lamp Module";
            break;
        case inventoryListOutDoorCamera:
            return @"Out Door Camera";
            break;
        case inventoryList5AmpBattery:
            return @"5 Amp Battery";
            break;
        case inventoryList16point5Transformer:
            return @"16.5 Transformer";
            break;
        case inventoryListYardSign:
            return @"Yard Sign";
            break;
        case inventoryListSignLights:
            return @"Sign Lights";
            break;
        case inventoryListDecals:
            return @"Decals";
            break;
        case inventoryListTakeOverKit:
            return @"TakeOver Kit";
            break;
        case inventoryListFloodSensor:
            return @"Flood Sensor";
    }

}

@end

