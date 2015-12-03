//
//  LabelCell.m
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/28/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import "LabelCell.h"
#import "serviceTableViewController.h"
@implementation LabelCell

- (void)awakeFromNib {
    // this is for the date sections.
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    
    return YES;
}


#pragma mark - Text Field Delegate

- (void)textFieldDidEndEditing:(UITextField *)textField {
    [self.delegate textEnteredInCell:self];
}

@end
