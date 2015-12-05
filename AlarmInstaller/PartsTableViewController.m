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
#import "InventoryCell.h"
#import "InventoryItem+CoreDataProperties.h"
#import "PartsController.h"
#import "Stack.h"




@interface PartsTableViewController () <PartsCellDelegate>

@property(strong, nonatomic, retain)NSString *goControl;
@property(nullable, nonatomic, retain)NSString *gc3;
@property(nullable, nonatomic, retain)NSString *verizonCell;
@property(nullable, nonatomic, retain)NSString *atandtCell;
@property(nullable, nonatomic, retain)NSString *thinDw;
@property(nullable, nonatomic, retain)NSString *recessedDw;
@property(nullable, nonatomic, retain)NSString *motion;
@property(nullable, nonatomic, retain)NSString *glassBreak;
@property(nullable, nonatomic, retain)NSString *smoke;
@property(nullable, nonatomic, retain)NSString *carbon;
@property(nullable, nonatomic, retain)NSString *fireFighter;
@property(nullable, nonatomic, retain)NSString *medPendant;
@property(nullable, nonatomic, retain)NSString *keyFOB;
@property(nullable, nonatomic, retain)NSString *superSwitch;
@property(nullable, nonatomic, retain)NSString *wirelessKeypad;
@property(nullable, nonatomic, retain)NSString *TS1Keypad;
@property(nullable, nonatomic, retain)NSString *gdReceiver;
@property(nullable, nonatomic, retain)NSString *nineHundredMhzTrans;
@property(nullable, nonatomic, retain)NSString *GETakeover;
@property(nullable, nonatomic, retain)NSString *imageSensor;
@property(nullable, nonatomic, retain)NSString *HD100Camera;
@property(nullable, nonatomic, retain)NSString *doorLockGold;
@property(nullable, nonatomic, retain)NSString *doorLockSilver;
@property(nullable, nonatomic, retain)NSString *doorLockBronze;
@property(nullable, nonatomic, retain)NSString *thermostat;
@property(nullable, nonatomic, retain)NSString *MyQGarage;
@property(nullable, nonatomic, retain)NSString *MyQExtraDoor;
@property(nullable, nonatomic, retain)NSString *doorBell;
@property(nullable, nonatomic, retain)NSString *lampModule;
@property(nullable, nonatomic, retain)NSString *outDoorCamera;
@property(nullable, nonatomic, retain)NSString *fiveAmpBattery;
@property(nullable, nonatomic, retain)NSString *sixteenPoint5transformer;
@property(nullable, nonatomic, retain)NSString *yardSign;
@property(nullable, nonatomic, retain)NSString *signLighs;
@property(nullable, nonatomic, retain)NSString *decals;
@property(nullable, nonatomic, retain)NSString *takeOverKit;
@property(nullable, nonatomic, retain)NSString *FloodSensor;

@end

@implementation PartsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)save:(id)sender {
    
    [self.view endEditing:YES];
    
    NSMutableArray *partsArray = [NSMutableArray new];
    

    [[PartsController sharedInstance] createPartsWithpartName:self.partName quantity:self.quantity];
    
    for (int i=0; i < 37; i++) {
        
        InventoryItem *item = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
        item.partName = [[PartsController sharedInstance] partNameForInventoryItem:i];
        item.quantity = @0;
        item.service = self.service;
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    PartsCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"partsCell"];
    cell.delegate = self;
    inventoryList item = indexPath.row;
    NSString *partName = [[PartsController sharedInstance] partNameForInventoryItem:item];
    cell.partLabel.text = partName;
    return cell;

}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 37;
    //        return [InventoryController sharedInstance].parts.count;
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

#pragma mark - Label Cell Delegate

- (void)NumberEnteredInCell:(PartsCell *)cell {
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    inventoryList row = indexPath.row;
    
    switch (row) {
            
        case inventoryListGoControl: {
            NSString *goControl = cell.partQuantity.text;
            self.goControl = goControl;
            break;
        }
        case inventoryListgc3: {
            NSString *gc3 = cell.partQuantity.text;
            self.gc3 = gc3 ;
            break;
        }
        case inventoryListVerizonCell: {
            NSString *verizonCell = cell.partQuantity.text;
            self.verizonCell = verizonCell;
            break;
        }
        case inventoryListATandTCell:{
            NSString *atandtCell = cell.partQuantity.text;
            self.atandtCell = atandtCell;
            break;
        }
        case inventoryListTHINDW:{
            NSString *ThinDw = cell.partQuantity.text;
            self.thinDw = ThinDw;
            break;
        }
        case inventoryListrecessedDW:{
            NSString *recessedDW = cell.partQuantity.text;
            self.recessedDw = recessedDW;
            break;
        }
        case inventoryListMotion:{
            NSString *Motion = cell.partQuantity.text;
            self.motion = Motion;
            break;
        }
        case inventoryListGlassBreak:{
            NSString *glassBreak = cell.partQuantity.text;
            self.glassBreak = glassBreak;
            break;
        }
        case inventoryListSmoke:{
            NSString *glassBreak = cell.partQuantity.text;
            self.glassBreak = glassBreak;
            break;
        }
        case inventoryListCarbon:{
            NSString *carbon = cell.partQuantity.text;
            self.carbon = carbon;
            break;
        }
        case inventoryListFireFighter:{
            NSString *fireFighter = cell.partQuantity.text;
            self.fireFighter = fireFighter;
            break;
        }
        case inventoryListMedPendant:{
            NSString *medPendant = cell.partQuantity.text;
            self.medPendant = medPendant;
            break;
        }
        case inventoryListKeyFOB:{
            NSString *keyFOB = cell.partQuantity.text;
            self.keyFOB = keyFOB;
            break;
        }
        case inventoryListSuperSwitch:{
            NSString *SuperSwitch = cell.partQuantity.text;
            self.superSwitch = SuperSwitch;
            break;
        }
        case inventoryListWirelessKeypad:{
            NSString *wirelessKeypad = cell.partQuantity.text;
            self.wirelessKeypad = wirelessKeypad;
            break;
        }
        case inventoryListTS1Keypad:{
            NSString *TS1Keypad = cell.partQuantity.text;
            self.TS1Keypad = TS1Keypad;
            break;
        }
        case inventoryListGDReceiver:{
            NSString *GDReceiver = cell.partQuantity.text;
            self.gdReceiver = GDReceiver;
            break;
        }
        case inventoryList900mhzTrans:{
            NSString *ninehundredMhzTrans = cell.partQuantity.text;
            self.nineHundredMhzTrans = ninehundredMhzTrans;
            break;
        }
        case inventoryListGETakeover:{
            NSString *GETakeover = cell.partQuantity.text;
            self.GETakeover = GETakeover;
            break;
        }
        case inventoryListImageSensor:{
            NSString *imageSensor = cell.partQuantity.text;
            self.imageSensor = imageSensor;
            break;
        }
        case inventoryListHD100Camera:{
            NSString *HD100Camera = cell.partQuantity.text;
            self.HD100Camera = HD100Camera;
            break;
        }
        case inventoryListDoorLockGold:{
            NSString *doorLockGold = cell.partQuantity.text;
            self.doorLockGold = doorLockGold;
            break;
        }
        case inventoryListDoorLockSilver:{
            NSString *doorLockSilver = cell.partQuantity.text;
            self.doorLockSilver = doorLockSilver;
            break;
        }
        case inventoryListDoorLockbronze:{
            NSString *doorLockbronze = cell.partQuantity.text;
            self.doorLockBronze = doorLockbronze;
            break;
        }
        case inventoryListThermostat:{
            NSString *thermostat = cell.partQuantity.text;
            self.thermostat = thermostat;
            break;
        }
        case inventoryListMyQGarage:{
            NSString *myQGarge = cell.partQuantity.text;
            self.MyQGarage = myQGarge;
            break;
        }
        case inventoryListMyQExtraDoor:{
            NSString *myQExtraDoor = cell.partQuantity.text;
            self.MyQExtraDoor = myQExtraDoor;
            break;
        }
        case inventoryListDoorBell:{
            NSString *doorBell = cell.partQuantity.text;
            self.doorBell = doorBell;
            break;
        }
        case inventoryListLampModule:{
            NSString *lampModule = cell.partQuantity.text;
            self.lampModule = lampModule;
            break;
        }
        case inventoryListOutDoorCamera:{
            NSString *outDoorCamera = cell.partQuantity.text;
            self.outDoorCamera = outDoorCamera;
            break;
        }
        case inventoryList5AmpBattery:{
            NSString * fiveAmpBattery = cell.partQuantity.text;
            self.fiveAmpBattery = fiveAmpBattery;
            break;
        }
        case inventoryList16point5Transformer:{
            NSString *sixteenPoint5Transformer = cell.partQuantity.text;
            self.sixteenPoint5transformer = sixteenPoint5Transformer;
            break;
        }
        case inventoryListYardSign:{
            NSString *yardSign = cell.partQuantity.text;
            self.yardSign = yardSign;
            break;
        }
        case inventoryListSignLights:{
            NSString *signLights = cell.partQuantity.text;
            self.signLighs = signLights;
            break;
        }
        case inventoryListDecals:{
            NSString *decals = cell.partQuantity.text;
            self.decals = decals;
            break;
        }
        case inventoryListTakeOverKit:{
            NSString *takeOverKit = cell.partQuantity.text;
            self.takeOverKit = takeOverKit;
            break;
        }
        case inventoryListFloodSensor:{
            NSString *floodSensor = cell.partQuantity.text;
            self.FloodSensor = floodSensor;
            break;
        }

    }
}

@end
