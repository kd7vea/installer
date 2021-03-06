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
    datePicker.datePickerMode = UIDatePickerModeDateAndTime;
    [self.dateField setInputView:datePicker];
    [datePicker addTarget:self action:@selector(datePickerChanged:) forControlEvents:UIControlEventValueChanged];

}

- (BOOL)dateFieldShouldReturn:(DateCell *)dateField {
    [dateField resignFirstResponder];
    
    return YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)datePickerChanged: (UIDatePicker *)picker {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    [dateFormatter setTimeStyle:NSDateFormatterShortStyle];
    NSString *date = [dateFormatter stringFromDate:picker.date];
    self.dateField.text = date;
    self.date = picker.date;
    [self.delegate dateChanged:self];
}




#pragma mark - date Field Delegate

-(void)textViewDidChange:(UITextField *)textField {
    [self.delegate dateChanged:self];
}


@end


