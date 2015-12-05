//
//  InventoryTableViewController.m
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/31/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import "InventoryTableViewController.h"
#import "InventoryCell.h"


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

@interface InventoryTableViewController () <InventoryCellDelegate>

@property (nullable, nonatomic, retain) NSString *partName;
@property (nullable, nonatomic, retain) NSNumber *quantity;
@property (assign, nonatomic)NSInteger count;
@property (nonatomic, strong) NSDictionary *inventoryDictionary;

@end

@implementation InventoryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//TODO: Took from datasource
-(IBAction)save:(id)sender{
    
    [self.view endEditing:YES];
    
    for (NSNumber *key in self.inventoryDictionary) {
        inventoryList item = key.integerValue;
        NSString *partName = [self partNameForInventoryItem:item];
        NSString *partAmountString = self.inventoryDictionary[key];
        NSInteger partAmount = partAmountString.integerValue;
        [[InventoryController sharedInstance] updateWithPartName:partName toAmount:@(partAmount)];
        
    }
}

#pragma mark - Inventory Cell delegate
- (void)textEnteredInCell:(InventoryCell *)cell {
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    inventoryList inventoryItem = indexPath.row;
    NSMutableDictionary *mutableInventory = [NSMutableDictionary dictionaryWithDictionary:self.inventoryDictionary];
    mutableInventory[@(inventoryItem)] = cell.quantity.text;
    self.inventoryDictionary = mutableInventory;
}

- (void)textChangedInCell:(InventoryCell *)cell {
    // Nothing for now, until we want to update while typing
}
#warning why is there no code here, but when I comment out, the programs stops working
- (IBAction)quantitytTextField:(id)sender {
}

- (IBAction)stepper:(id)sender {
}


#pragma mark - UITableView data source

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    InventoryCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"inventoryCell"];
    inventoryList item = indexPath.row;
    cell.quantity.keyboardType = UIKeyboardTypeNumberPad;
    NSString *partName = [self partNameForInventoryItem:item];
    cell.partLabel.text = partName;
    // TODO: get quantity from core data for part with partName
    // TODO: set the quantity textField.text to quantity from core data
    return cell;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 37;
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


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
