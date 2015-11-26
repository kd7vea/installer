//
//  TextViewCell.m
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/28/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import "TextViewCell.h"

@implementation TextViewCell

- (void)awakeFromNib {
    // Initialization code
    self.textView.delegate = self;
}

-(void)textViewDidChange:(UITextView *)textView {
    [self.delegate myTextChanged:self];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



@end
