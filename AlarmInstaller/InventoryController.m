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
    part1.partName = @"part1";
    part1.quantity = @0;
    
    InventoryItem *part2 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part2.partName = @"part2";
    part2.quantity = @0;
    
    InventoryItem *part3 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part3.partName = @"part3";
    part3.quantity = @0;
    
    InventoryItem *part4 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part4.partName = @"part4";
    part4.quantity = @0;
    
    InventoryItem *part5 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part5.partName = @"part5";
    part5.quantity = @0;
    
    InventoryItem *part6 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part6.partName = @"part6";
    part6.quantity = @0;
    
    InventoryItem *part7 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part7.partName = @"part7";
    part7.quantity = @0;
    
    InventoryItem *part8 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part8.partName = @"part8";
    part8.quantity = @0;
    
    InventoryItem  *part9 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part9.partName = @"part9";
    part9.quantity = @0;
    
    InventoryItem *part10 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part10.partName = @"part10";
    part10.quantity = @0;
    
    InventoryItem *part11 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part11.partName = @"part11";
    part11.quantity = @0;
    
    InventoryItem *part12 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part12.partName = @"part12";
    part12.quantity = @0;
    
    InventoryItem *part13 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part13.partName = @"part13";
    part13.quantity = @0;
    
    InventoryItem *part14 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part14.partName = @"part14";
    part14.quantity = @0;
    
    InventoryItem *part15 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part15.partName = @"part15";
    part15.quantity = @0;
    
    InventoryItem *part16 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part16.partName = @"part16";
    part16.quantity = @0;
    
    InventoryItem *part17 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part17.partName = @"part17";
    part17.quantity = @0;
    
    InventoryItem *part18 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part18.partName = @"part18";
    part18.quantity = @0;
    
    InventoryItem  *part19 = [NSEntityDescription insertNewObjectForEntityForName:@"InventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part19.partName = @"part19";
    part19.quantity = @0;
    
    InventoryItem *part20 = [NSEntityDescription insertNewObjectForEntityForName:@"inventoryItem" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    part20.partName = @"part20";
    part20.quantity = @0;
}



//CRUD Read Method



//CRUD Update Method
-(void)save{
    
}


@end
