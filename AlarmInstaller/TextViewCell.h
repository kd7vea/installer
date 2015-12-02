//
//  TextViewCell.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/28/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TextViewCellDelegate;

@interface TextViewCell : UITableViewCell <UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) id<TextViewCellDelegate> delegate;

@end

@protocol TextViewCellDelegate <NSObject>

-(void) myTextChanged:(TextViewCell *)sender;

@end