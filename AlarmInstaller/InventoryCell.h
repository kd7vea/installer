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
@property (weak, nonatomic) IBOutlet UITextField *quantity;
@property (weak, nonatomic) IBOutlet UILabel *partLabel;
@property (weak, nonatomic) IBOutlet UIStepper *inventoryStepper;

@end

@protocol InventoryCellDelegate <NSObject>


@end