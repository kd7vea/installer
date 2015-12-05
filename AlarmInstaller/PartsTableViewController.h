//
//  PartsTableViewController.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/31/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PartsCell.h"
#import "Service.h"
#import "PartsController.h"

@interface PartsTableViewController : UITableViewController

@property (nullable, nonatomic, retain) NSString *partName;
@property (nullable, nonatomic, retain) NSNumber *quantity;
@property (nullable, nonatomic, retain) NSNumber *count;
@property (nullable, strong, nonatomic) Service *service;

@end
