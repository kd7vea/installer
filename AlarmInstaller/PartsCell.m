//
//  PartsCell.m
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/31/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import "PartsCell.h"

@implementation PartsCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)stepper:(id)sender {
    UIStepper *stepper = sender;
    NSLog(@"%f", [stepper value]);
    NSInteger value = [stepper value];
    parQuantity.text = [NSString stringWithFormat:@"%d", (int)value];
}


@end
