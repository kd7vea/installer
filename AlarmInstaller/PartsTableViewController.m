//
//  PartsTableViewController.m
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/31/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import "PartsTableViewController.h"
#import "PartsCell.h"
#import "InventoryController.h"


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


@interface PartsTableViewController ()
@property (nullable, nonatomic, retain) NSString *partName;
@property (nullable, nonatomic, retain) NSNumber *quantity;
@property (nullable, nonatomic, retain) NSNumber *count;
@end

@implementation PartsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    PartsCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"partsCell"];
    inventoryList item = indexPath.row;
    NSString *partName = [self partNameForInventoryItem:item];
    cell.partLabel.text = partName;
    return cell;


}
 


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 37;
//        return [InventoryController sharedInstance].parts.count;
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
                return @"cell For Sign Lights";
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

//- (void)partStepperChanged:(id)sender {
//    
//    UIStepper *stepper = sender;
//    NSInteger index = stepper.tag;
//    NSInteger value = [stepper value];
//    UITextField *partQuarntity = self.partQuantity[index];
//    
//    quantity.text = [NSString stringWithFormat:@"%d", (int)value];
//}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    return YES;
}


@end
