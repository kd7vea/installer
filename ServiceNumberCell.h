//
//  ServiceNumberCell.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 11/5/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ServiceNumberCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UITextField *serviceNumberTextField;
@property (copy, nonatomic) void (^didChangeText)(NSNumber *text);
@end
