//
//  serviceTableViewController.m
//  AlarmInstaller
//
//  Created by Jake Estepp on 10/29/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import "serviceTableViewController.h"
#import "ServiceController.h"
#import "Service.h"
#import "LabelCell.h"
#import "TextViewCell.h"
#import "ButtonCell.h"
#import "ServiceNumberTableViewController.h"

typedef NS_ENUM(NSInteger, ServiceRow) {
    ServiceRowServiceNumber = 0,
    ServiceRowAddress,
    ServiceRowCity,
    ServiceRowState,
    ServiceRowZipcode,
    ServiceRowStartTime,
    ServiceRowEndTime,
    ServiceRowServicePerformed,
    ServiceRowMileage,
    ServiceRowParts
};

@interface serviceTableViewController ()

@property (strong, nonatomic) NSMutableArray *serviceCellCount;
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

@implementation serviceTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    Service *service = [[ServiceController sharedInstance] createServiceWithserviceNumber:@5 address:@"4306 Griffin Rd" city:@"Hughson" state:@"Ca" zipCode:@95326 startTime:[NSDate date] endTime:[NSDate date] servicePerformed:@"Ate pie" parts:@"idk" mileage:@1];
    
}
- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case ServiceRowServiceNumber:
            return [self cellForServiceNumber];
            break;
        case ServiceRowAddress:
            return [self cellForAddress];
            break;
        case ServiceRowCity:
            return [self cellForCity];
            break;
        case ServiceRowState:
            return [self cellForState];
            break;
        case ServiceRowZipcode:
            return [self cellForZIpCode];
            break;
        case ServiceRowStartTime:
            return [self cellForStartTime];
            break;
        case ServiceRowEndTime:
            return [self cellForEndTime];
            break;
        case ServiceRowServicePerformed:
            return [self cellForServicePerformed];
            break;
        case ServiceRowMileage:
            return [self cellForMileage];
            break;
        case ServiceRowParts:
            return [self cellForParts];
        default: NSLog(@"No Case Found");
            return nil;
    }
}



-(UITableViewCell *)cellForServiceNumber {
    LabelCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"labelCell"];
    cell.label.text = @"Service Number";
    self.serviceNumber = [NSNumber numberWithInteger:[cell.textField.text intValue]];
    return cell;
}

-(UITableViewCell *)cellForAddress {
    LabelCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"labelCell"];
    cell.label.text = @"Address";
    self.address = cell.textField.text;
    return cell;
}

-(UITableViewCell *)cellForCity {
    LabelCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"labelCell"];
    cell.label.text = @"City";
    self.city = cell.textField.text;
    return cell;
}
-(UITableViewCell *)cellForState {
    LabelCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"labelCell"];
    cell.label.text = @"State";
    self.state = cell.textField.text;
    return cell;
}
-(UITableViewCell *)cellForZIpCode {
    LabelCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"labelCell"];
    cell.label.text = @"ZipCode";
    self.zipCode = [NSNumber numberWithInteger:[cell.textField.text intValue]];
    return cell;
}
-(UITableViewCell *)cellForStartTime {
    LabelCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"labelCell"];
    cell.label.text = @"StartTime";
    self.address = cell.textField.text;
    return cell;
}
-(UITableViewCell *)cellForEndTime {
    LabelCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"labelCell"];
    cell.label.text = @"EndTime";
    self.address = cell.textField.text;
    return cell;
}

-(UITableViewCell *)cellForServicePerformed {
    TextViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"textViewCell"];
    cell.label.text = @"Service Performed";
    self.servicePerformed = cell.textView.text;
    return cell;
}


-(UITableViewCell *)cellForParts {
    ButtonCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"buttonCell"];
    cell.label.text = @"parts";
    return cell;
}

-(UITableViewCell *)cellForMileage {
    LabelCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"labelCell"];
    cell.label.text = @"Mileage";
    self.address = cell.textField.text;
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}












/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
