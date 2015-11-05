//
//  InventoryController.m
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/21/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import "InventoryController.h"
#import "InventoryItem.h"
#import "Stack.h"

@implementation InventoryController

//-(NSArray *)inventoryInfo{




//}
//CRUD create Method
//create the new inventory list with quantities set at zero
-(void) createInitialInventory {
    //creates an instance of inventoryItem(core data object) named part
    //entities are the "partName" inside of the InventoryItem CoreData model
    InventoryItem *part1 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part1.partName = @"GoControl";
    part1.quantity = @0;
    
    InventoryItem *part2 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part2.partName = @"GC-3";
    part2.quantity = @0;
    
    InventoryItem *part3 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part3.partName = @"Verizon Cell";
    part3.quantity = @0;
    
    InventoryItem *part4 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part4.partName = @"AT&T Cell";
    part4.quantity = @0;
    
    InventoryItem *part5 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part5.partName = @"Thin D/W";
    part5.quantity = @0;
    
    InventoryItem *part6 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part6.partName = @"recessed D/W";
    part6.quantity = @0;
    
    InventoryItem *part7 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part7.partName = @"Motion";
    part7.quantity = @0;
    
    InventoryItem *part8 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part8.partName = @"Glass Break";
    part8.quantity = @0;
    
    InventoryItem  *part9 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part9.partName = @"Smoke";
    part9.quantity = @0;
    
    InventoryItem *part10 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part10.partName = @"Carbon";
    part10.quantity = @0;
    
    InventoryItem *part11 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part11.partName = @"FIre Fighter";
    part11.quantity = @0;
    
    InventoryItem *part12 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part12.partName = @"MED Pendant";
    part12.quantity = @0;
    
    InventoryItem *part13 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part13.partName = @"KEYFOB";
    part13.quantity = @0;
    
    InventoryItem *part14 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part14.partName = @"SuperSwitch";
    part14.quantity = @0;
    
    InventoryItem *part15 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part15.partName = @"Wireless Keypad";
    part15.quantity = @0;
    
    InventoryItem *part16 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part16.partName = @"TS-1 Keypad";
    part16.quantity = @0;
    
    InventoryItem *part17 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part17.partName = @"GD Receiver";
    part17.quantity = @0;
    
    InventoryItem *part18 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part18.partName = @"900MHZ Trans";
    part18.quantity = @0;
    
    InventoryItem  *part19 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part19.partName = @"GE Takeover";
    part19.quantity = @0;
    
    InventoryItem *part20 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part20.partName = @"Image Sersor";
    part20.quantity = @0;
    
    InventoryItem *part21 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part21.partName = @"HD-100 Camera";
    part21.quantity = @0;
    
    InventoryItem *part22 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part22.partName = @"Door Locl Gold";
    part22.quantity = @0;
    
    InventoryItem *part23 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part23.partName = @"Door Lock Silver";
    part23.quantity = @0;
    
    InventoryItem *part24 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part24.partName = @"Door Lock Bronze";
    part24.quantity = @0;
    
    InventoryItem *part25 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part25.partName = @"Thermostat";
    part25.quantity = @0;
    
    InventoryItem *part26 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part26.partName = @"MY-Q Garage";
    part26.quantity = @0;
    
    InventoryItem *part27 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part27.partName = @"MY-Q Extra door";
    part27.quantity = @0;
    
    InventoryItem *part28 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part28.partName = @"Door Bell";
    part28.quantity = @0;
    
    InventoryItem *part29 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part29.partName = @"Lamp Module";
    part29.quantity = @0;
    
    InventoryItem *part30 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part30.partName = @"OutDoor Camera";
    part30.quantity = @0;
    
    InventoryItem *part31 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part31.partName = @"5Amp Battery";
    part31.quantity = @0;
    
    InventoryItem *part32 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part32.partName = @"16.5 Transformer";
    part32.quantity = @0;
    
    InventoryItem *part33 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part33.partName = @"YardSigns";
    part33.quantity = @0;
    
    InventoryItem *part34 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part34.partName = @"Sign Lights";
    part34.quantity = @0;
    
    InventoryItem *part35 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part35.partName = @"Decals";
    part35.quantity = @0;
    
    InventoryItem *part36 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part36.partName = @"Take Over Kit";
    part36.quantity = @0;
    
    InventoryItem *part37 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part37.partName = @"flood Sersor";
    part37.quantity = @0;
}




//CRUD Read Method



//CRUD Update Method
-(void)save{
    
}


@end
