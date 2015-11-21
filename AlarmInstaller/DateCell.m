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
    datePicker.datePickerMode = UIDatePickerModeDate;
    [self.dateField setInputView:datePicker];
    [datePicker addTarget:self action:@selector(datePickerChanged:) forControlEvents:UIControlEventValueChanged];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//-(void)datePickerChanged: (UIDatePicker *)picker {
//    if (<#condition#>) {
//        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//        [dateFormatter setDateFormat:@"MM /d /y"];
//        NSString *date = [dateFormatter stringFromDate:picker.date];
//        self.dateField.text = date;
//
//    } else {
//        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//        [dateFormatter setDateFormat:@"MM /d /y "];
//        NSString *date = [dateFormatter stringFromDate:picker.date];
//        self.dateField.text = date;
//
//    }
//   }

@end


