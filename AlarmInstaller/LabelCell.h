//
//  LabelCell.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/28/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LabelCellDelegate;

@interface LabelCell : UITableViewCell <UITextFieldDelegate>
@property (weak, nonatomic) id<LabelCellDelegate> delegate;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@protocol LabelCellDelegate <NSObject>

- (void)textEnteredInCell:(LabelCell *)cell;

@end