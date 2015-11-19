//
//  InventoryCell.m
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/31/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import "InventoryCell.h"
//I need to subtract the parts quantity from the from the inventory quantity, this is why I import "PartsCell.h"
#import "PartsCell.h"


@interface InventoryCell() <UITextFieldDelegate>;

@end

@implementation InventoryCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}
- (IBAction)stepper:(id)sender {
    UIStepper *stepper = sender;
    NSInteger quantity = [stepper value];
    self.quantity.text = [NSString stringWithFormat:@"%d", (int)quantity];
    
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    NSInteger newValue;
    
    if ([textField.text isEqualToString:@""]) {
        newValue = string.integerValue;
    } else {
        NSString *fullString = [NSString stringWithFormat:@"%@%@", textField.text, string];
        newValue = fullString.integerValue;
    }
    
    self.inventoryStepper.value = newValue;
    
    return YES;
}




- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    
    return YES;
}


@end
