//
//  InventoryListDataSource.m
//  AlarmInstaller
//
//  Created by Jake Estepp on 11/3/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import "InventoryListDataSource.h"
#import "InventoryCell.h"
@implementation InventoryListDataSource

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
InventoryCell *cell = [tableView.]
}

-(void)tableView...  cellforRow {
    InventoryCell *cell = [table...]
    cell.delegate = self;
}


-(void)TextEnteredInCell:(InventoryCell *)cell{
    NSIndexPath *indexPath = [self.tableView indexPathforCell:cell];
    inventoryList inventoryItem = indexPath.row;
    self.inventoryDictionary[@(inventoryItem)] = cell.textField.text;
}

-(IBAction)save:(id)sender{
    for (NSNumber *key in self.inventoryDictionary) {
        inventoryList item = key.integerValue;
        NSString *partName = [self inventorypartForItem: item];
        NSString *partAmountString = self.inventoryDictionary[key];
        NSInteger partAmount = partAmountString.integerValue;
    }
    [[InventoryController sharedinstance] updatePartWithName:name]}
    toAmount.partAmount
}

    

@end
