//
//  MileageCell.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 11/12/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MileageCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UITextField *businessMIleage;
@property (weak, nonatomic) IBOutlet UITextField *personalMileage;

@end
