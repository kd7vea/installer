//
//  TextViewCell.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/28/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TextViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIView *label;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end
