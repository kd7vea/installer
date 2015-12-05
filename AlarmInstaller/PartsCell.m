//
//  PartsCell.m
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/31/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import "PartsCell.h"

@interface PartsCell() <UITextFieldDelegate>

@end

@implementation PartsCell

- (void)awakeFromNib {
    // Initialization code
    
    
    self.partQuantity.delegate = self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)stepper:(id)sender {
    UIStepper *stepper = sender;
   // NSLog(@"%f", [stepper value]);
    NSInteger partQuantity = [stepper value];
    self.partQuantity.text = [NSString stringWithFormat:@"%d", (int)partQuantity];
    [self.delegate NumberEnteredInCell:self];
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    NSInteger newValue;
    
    if ([textField.text isEqualToString:@""]) {
        newValue = string.integerValue;
    } else {
        NSString *fullString = [NSString stringWithFormat:@"%@%@", textField.text, string];
        newValue = fullString.integerValue;
    }
    
    self.partStepper.value = newValue;
    
    [self.delegate NumberEnteredInCell:self];

    return YES;
}

#pragma mark - Text Field Delegate


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    return YES;
}


@end
