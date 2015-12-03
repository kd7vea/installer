//
//  DateCell.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 11/12/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DateCellDelegate;

@interface DateCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *dateField;
@property (weak, nonatomic) NSDate *date;
@property (weak, nonatomic) id<DateCellDelegate> delegate;

@end

@protocol DateCellDelegate <NSObject>
-(void) dateChanged:(DateCell *)sender;

@end

