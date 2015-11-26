//
//  serviceTableViewController.h
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/29/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface serviceTableViewController : UITableViewController


@property (nullable, nonatomic, retain) NSNumber *serviceNumber;
@property (nullable, nonatomic, retain) NSString *address;
@property (nullable, nonatomic, retain) NSString *city;
@property (nullable, nonatomic, retain) NSString *state;
@property (nullable, nonatomic, retain) NSNumber *zipCode;
@property (nullable, nonatomic, retain) NSDate *endTime;
@property (nullable, nonatomic, retain) NSDate *startTime;
@property (nullable, nonatomic, retain) NSString *servicePerformed;
@property (nullable, nonatomic, retain) NSString *parts;
@property (nullable, nonatomic, retain) NSNumber *mileage;


@end
