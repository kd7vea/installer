//
//  DateCell.m
//  AlarmInstaller
//
//  Created by Jake Estepp on 11/12/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import "DateCell.h"

@implementation DateCell

//this is where I create my date picker for the timecells.
- (void)awakeFromNib {
    UIDatePicker *datePicker = [[UIDatePicker alloc]init];
    [self.dateField setInputView:datePicker];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
