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

@interface InventoryTableViewController ()

@property (nullable, nonatomic, retain) NSString *partName;
@property (nullable, nonatomic, retain) NSNumber *quantity;
@property (assign, nonatomic)NSInteger count;
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
//    for (NSNumber *key in self.inventoryDictionary) {
//        inventoryList item = key.integerValue;
//        NSString *partName = [self inventorypartForItem: item];
//        NSString *partAmountString = self.inventoryDictionary[key];
//        NSInteger partAmount = partAmountString.integerValue;
//    }
    [[InventoryController sharedInstance] updateWithPartName:@"part" toAmount:@2];
}

//TODO: Took from datasource
-(void)TextEnteredInCell:(InventoryCell *)cell{
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    inventoryList inventoryItem = indexPath.row;
#warning I don't have inventoryDictionary yet
//    self.inventoryDictionary[@(inventoryItem)] = cell.textField.text;
}
- (IBAction)quantitytTextField:(id)sender {
}

- (IBAction)stepper:(id)sender {
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"inventoryCell"];
    return cell;
//    switch (indexPath.row) {
//        case inventoryListGoControl:
//            return [self.cellForGoControl];
//            break;
//        case inventoryListgc3:
//            return [self.cellforGC3];
//            break;
//        case inventoryListVerizonCell:
//            return [self.cellForVerizon];
//            break;
//        case inventoryListATandTCell:
//            return [self.cellForATAndT];
//            break;
//        case inventoryListTHINDW:
//            return [self.cellForRecessedDW];
//            break;
//        case inventoryListMotion:
//            return [self.cellForMotion];
//            break;
//        case inventoryListGlassBreak:
//            return [self.cellforGlassBreak];
//            break;
//        case inventoryListSmoke:
//            return [self.cellForSmoke];
//            break;
//        case inventoryListCarbon:
//            return [self.cellForCarbon];
//            break;
//        case inventoryListFireFighter:
//            return [self.cellForFireFighter];
//            break;
//        case inventoryListMedPendant:
//            return [self.cellForMedPendant];
//            break;
//        case inventoryListKeyFOB:
//            return [self.cellForKeyFOB];
//            break;
//        case inventoryListSuperSwitch:
//            return [self.cellForSuperSwitch];
//            break;
//        case inventoryListWirelessKeypad:
//            return [self.cellForWirelessKeyPad];
//            break;
//        case inventoryListTS1Keypad:
//            return [self.cellForTS1Keypad];
//            break;
//        case inventoryListGDReceiver:
//            return [self.cellForGDReceiver];
//            break;
//        case inventoryList900mhzTrans:
//            return [self.cellFor900MHZReceiver];
//            break;
//        case inventoryListGETakeover:
//            return [self.cellForGETakeover];
//            break;
//        case inventoryListImageSensor:
//            return [self.cellForImageSensor];
//            break;
//        case inventoryListHD100Camera:
//            return [self.cellForHD100Camera];
//            break;
//        case inventoryListDoorLockGold:
//            return [self.cellforDoorLockGold];
//            break;
//        case inventoryListDoorLockSilver:
//            return [self.cellForDoorLockSlver];
//            break;
//        case inventoryListDoorLockbronze:
//            return [self.cellForDoorLockBronze];
//            break;
//        case inventoryListThermostat:
//            return [self.cellForThermostat];
//            break;
//        case inventoryListMyQGarage:
//            return [self.cellForMyQGarage];
//            break;
//        case inventoryListMyQExtraDoor:
//            return [self.cellFOrMyQExtraDoor];
//            break;
//        case inventoryListDoorBell:
//            return [self.cellForDoorBell];
//            break;
//        case inventoryListLampModule:
//            return [self.cellForLampModule];
//            break;
//        case inventoryListOutDoorCamera:
//            return [self.cellForOutDoorCamera];
//            break;
//        case inventoryList5AmpBattery:
//            return [self.cellFor5AmpBattery];
//            break;
//        case inventoryList16point5Transformer:
//            return [self.cellFor16Point5 Transformer];
//            break;
//        case inventoryListYardSign:
//            return [self.cellForYardSign];
//            break;
//        case inventoryListSignLights:
//            return [self.cellForSignLights];
//            break;
//        case inventoryListDecals:
//            return [self.cellForDecals];
//            break;
//        case inventoryListTakeOverKit;
//            return [self.cellForTakeOverKit];
//            break;
//        case inventoryListFloodSensor:
//            return [self.cellForFlood];
//        default:NSLog(@"No Case Found");
//            return nil;
//            
//    }
}





#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 37;
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
