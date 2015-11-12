//
//  PartsCell.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/31/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PartsCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *partLabel;

@property (weak, nonatomic) IBOutlet UIStepper *partStepper;
@property (weak, nonatomic) IBOutlet UITextField *partQuantity;

@end
