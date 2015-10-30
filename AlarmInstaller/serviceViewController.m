//
//  serviceViewController.m
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/28/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import "serviceViewController.h"
#import "ServiceController.h"
#import "Service.h"
#import "LabelCell.h"
#import "TextViewCell.h"


@interface serviceViewController ()<UITableViewDataSource, UITableViewDelegate>

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

@implementation serviceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Service *service = [[ServiceController sharedInstance] createServiceWithserviceNumber:@1 address:@"4306 Griffin Rd" city:@"Hughson" state:@"Ca" zipCode:@95326 startTime:[NSDate date] endTime:[NSDate date] servicePerformed:@"Ate pie" parts:@"idk" mileage:@1];
    NSLog(@"%@", service.city);
    
}

-(UITableViewCell *)cellForServiceNumber {
    LabelCell *cell = [self.ta]
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
