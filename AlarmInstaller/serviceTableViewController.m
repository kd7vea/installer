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
#import "DateCell.h"

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

@interface serviceTableViewController () <TextViewCellDelegate, LabelCellDelegate, DateCellDelegate>

@property (nonatomic, strong)NSDictionary *serviceDictionary;
@property (strong, nonatomic) NSMutableArray *serviceCellCount;

@end

@implementation serviceTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)save:(id)sender {
    
    [self.view endEditing:YES];
    
    [[ServiceController sharedInstance] createServiceWithserviceNumber:(NSNumber *)self.serviceNumber address:(NSString *)self.address city:(NSString * )self.city state:(NSString *)self.state zipCode:(NSNumber *)self.zipCode startTime:(NSDate *)self.startTime endTime:(NSDate *)self.endTime servicePerformed:(NSString *)self.servicePerformed parts:(NSString *)self.parts mileage:(NSNumber *)self.mileage];
    
    [self.navigationController popViewControllerAnimated:YES];
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
    cell.delegate = self;
    cell.label.text = @"Service Number";
    
    if (self.serviceNumber == nil) {
        
        self.serviceNumber = [NSNumber numberWithInteger:[cell.textField.text integerValue]];
        
    } else {
        cell.textField.text = [NSString stringWithFormat:@"%@", self.serviceNumber];
    }
    
    cell.textField.keyboardType = UIKeyboardTypeNumberPad;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    
}



-(UITableViewCell *)cellForAddress {
    LabelCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"labelCell"];
    cell.delegate = self;
    cell.label.text = @"Address";
    
    if (self.address == nil) {
        
    self.address = cell.textField.text;
    
    } else {
        cell.textField.text = self.address;
    }
    
    cell.textField.keyboardType = UIKeyboardTypeDefault;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}



-(UITableViewCell *)cellForCity {
    LabelCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"labelCell"];
    cell.delegate = self;
    cell.label.text = @"City";
    
    if (self.city == nil) {
        
        self.city = cell.textField.text;
        
    } else {
        cell.textField.text = self.city;
    }
    
    cell.textField.keyboardType = UIKeyboardTypeDefault;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}



-(UITableViewCell *)cellForState {
    LabelCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"labelCell"];
    cell.delegate = self;
    cell.label.text = @"State";

    if (self.state == nil) {
        
        self.state = cell.textField.text;
        
    } else {
        cell.textField.text = self.state;
    }
    
    cell.textField.keyboardType = UIKeyboardTypeDefault;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}



-(UITableViewCell *)cellForZIpCode {
    LabelCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"labelCell"];
    cell.delegate = self;
    cell.label.text = @"ZipCode";
    
    if (self.zipCode == nil) {
        
        self.zipCode = [NSNumber numberWithInteger:[cell.textField.text integerValue]];
        
    } else {
        cell.textField.text = [NSString stringWithFormat:@"%@", self.zipCode];
    }
    
    cell.textField.keyboardType = UIKeyboardTypeNumberPad;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}



-(UITableViewCell *)cellForStartTime {
    DateCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"dateCell"];
    
    cell.label.text = @"Start Time";
    
    if (self.startTime == nil) {
        
        self.startTime = cell.date;
        
    } else {
        
        NSDateFormatter *dateFormatter = [NSDateFormatter new];
        [dateFormatter setDateFormat:@"MM /d /y"];
        NSString *date = [dateFormatter stringFromDate:self.startTime];
        
        cell.dateField.text = date;
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}



-(UITableViewCell *)cellForEndTime{
    DateCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"dateCell"];
    cell.label.text = @"End Time";
    
    if (self.endTime == nil) {
        
        self.endTime = cell.date;
        
    } else {
        
        NSDateFormatter *dateFormatter = [NSDateFormatter new];
        [dateFormatter setDateFormat:@"MM /d /y"];
        NSString *date = [dateFormatter stringFromDate:self.endTime];
        
        cell.dateField.text = date;
    }

    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}



-(UITableViewCell *)cellForServicePerformed {
    TextViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"textViewCell"];
    cell.label.text = @"Service Performed";

    if (self.servicePerformed == nil) {
        
        self.servicePerformed = cell.textView.text;
        
    } else {
        cell.textView.text = self.servicePerformed;
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.delegate = self;
    return cell;
}



-(UITableViewCell *)cellForMileage {
    LabelCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"labelCell"];
    cell.label.text = @"Mileage";
    
    if (self.mileage == nil) {
        
        self.mileage = [NSNumber numberWithInteger:[cell.textField.text integerValue]];
        
    } else {
        cell.textField.text = [NSString stringWithFormat:@"%@", self.mileage];
    }
    
//    self.mileage = [NSNumber numberWithInteger:[cell.textField.text intValue]];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

-(UITableViewCell *)cellForParts {
    ButtonCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"buttonCell"];
    cell.label.text = @"parts";
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}


#pragma mark - TextViewDelegate

-(void)myTextChanged:(TextViewCell *)sender {
    self.servicePerformed = sender.textView.text;
}


#pragma mark - Label Cell Delegate

- (void)textEnteredInCell:(LabelCell *)cell {
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    ServiceRow row = indexPath.row;
    
    switch (row) {
        case ServiceRowServiceNumber: {
            NSString *serviceNumberInput = cell.textField.text;
            NSInteger serviceNumberInteger = [serviceNumberInput integerValue];
            NSNumber *serviceNumber = @(serviceNumberInteger);
            self.serviceNumber = serviceNumber;
            break;
        }
        case ServiceRowAddress: {
            NSString *address = cell.textField.text;
            self.address = address;
            break;
        }
        case ServiceRowCity: {
            NSString *city = cell.textField.text;
            self.city = city;
            break;
        }
        case ServiceRowState: {
            NSString *state = cell.textField.text;
            self.state = state;
            break;
        }
        case ServiceRowZipcode: {
            NSString *zipString = cell.textField.text;
            NSInteger zipInteger = [zipString integerValue];
            NSNumber *zip = @(zipInteger);
            self.zipCode = zip;
            break;
        }
        case ServiceRowMileage: {
            NSString *mileageString = cell.textField.text;
            NSInteger mileageInteger = [mileageString integerValue];
            NSNumber *mileage = @(mileageInteger);
            self.mileage = mileage;
            break;
        }
        case ServiceRowStartTime:
        case ServiceRowEndTime:
        case ServiceRowServicePerformed:
        case ServiceRowParts:
            break;
    }
    

}

#pragma mark - date cell delegate

- (void) dateChanged:(DateCell *)cell {
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    ServiceRow row = indexPath.row;
    
    switch (row) {
        case ServiceRowStartTime:
            NSDate *startTime = cell.da
            break;
            
        default:
            break;
    }
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
