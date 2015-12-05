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
#import "ServiceController.h"

typedef NS_ENUM(NSInteger, inventoryList) {
    inventoryListGoControl = 0,
    inventoryListgc3,
    inventoryListVerizonCell,
    inventoryListATandTCell,
    inventoryListTHINDW,
    inventoryListrecessedDW,
    inventoryListMotion,
    inventoryListGlassBreak,
    inventoryListSmoke,
    inventoryListCarbon,
    inventoryListFireFighter,
    inventoryListMedPendant,
    inventoryListKeyFOB,
    inventoryListSuperSwitch,
    inventoryListWirelessKeypad,
    inventoryListTS1Keypad,
    inventoryListGDReceiver,
    inventoryList900mhzTrans,
    inventoryListGETakeover,
    inventoryListImageSensor,
    inventoryListHD100Camera,
    inventoryListDoorLockGold,
    inventoryListDoorLockSilver,
    inventoryListDoorLockbronze,
    inventoryListThermostat,
    inventoryListMyQGarage,
    inventoryListMyQExtraDoor,
    inventoryListDoorBell,
    inventoryListLampModule,
    inventoryListOutDoorCamera,
    inventoryList5AmpBattery,
    inventoryList16point5Transformer,
    inventoryListYardSign,
    inventoryListSignLights,
    inventoryListDecals,
    inventoryListTakeOverKit,
    inventoryListFloodSensor
};



@interface PartsController : NSObject


@property (nullable, nonatomic, retain)NSArray *parts;
@property (nullable, nonatomic, retain)NSString *partName;
@property (nullable, nonatomic, retain)NSNumber *quantity;

+ (PartsController *)sharedInstance;

-(InventoryItem *)createPartsWithpartName:(NSString *)partName quantity:(NSNumber *)quantity;

- (NSString *)partNameForInventoryItem:(inventoryList)item ;
@end
