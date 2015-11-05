//
//  InventoryCell.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/31/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol InventoryCellDelegate;

@interface InventoryCell : UITableViewCell <UITextFieldDelegate>

@property(weak, nonatomic) id<InventoryCellDelegate> delegate;

@end

@protocol InventoryCellDelegate <NSObject>

- (void)textChangedInCell:(InventoryCell *)cell;
- (void)textEnteredInCell:(InventoryCell *)cell;

@end