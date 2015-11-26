//
//  TextViewCell.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/28/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol textChangedDelegate;

@interface TextViewCell : UITableViewCell <UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) id<textChangedDelegate> delegate;

@end

@protocol textChangedDelegate <NSObject>

-(void) myTextChanged:(TextViewCell *)sender;

@end