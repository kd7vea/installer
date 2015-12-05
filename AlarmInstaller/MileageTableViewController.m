//
//  MileageTableViewController.m
//  AlarmInstaller
//
//  Created by Jake Estepp on 11/12/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import "MileageTableViewController.h"
#import "DateCell.h"
#import "CalculateCell.h"
#import "MileageCell.h"

typedef NS_ENUM(NSInteger, Mileage) {
    MileageStartDateCell =0,
    MileageEndDateCell,
    MileageBusinessMileageCell,
    MileagePersonalMileageCell,
    MileageCalculateCell,
};




@interface MileageTableViewController ()

@property(nonatomic, retain)NSDate *date;

@end

@implementation MileageTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case MileageStartDateCell:
            return [self cellForStartDate];
            break;
        case MileageEndDateCell:
            return [self cellForEndDate];
            break;
        case MileageBusinessMileageCell:
            return [self cellForBusinessMileage];
            break;
        case MileagePersonalMileageCell:
            return [self cellForPersonalMileage];
            break;
        case MileageCalculateCell:
            return [self cellForCalculateCell];

        default: NSLog(@"No Case Found");
            return nil;
    }
}

-(UITableViewCell *)cellForStartDate {
    DateCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"dateCell"];
    cell.label.text = @"Start Time";
    
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    [dateFormatter setDateFormat:@"MM /d /y"];
    NSString *date = [dateFormatter stringFromDate:self.date;

    
    return cell;
}


-(UITableViewCell *)cellForEndDate{
    DateCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"dateCell"];
    cell.label.text = @"End Time";
    return cell;
}

-(UITableViewCell *)cellForBusinessMileage{
    MileageCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"mileageCell"];
    return cell;
}

-(UITableViewCell *)cellForPersonalMileage{
    MileageCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"mileageCell"];
    return cell;
}

-(UITableViewCell *)cellForCalculateCell{
    CalculateCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"calculateCell"];
    cell.label.text = @"Calculate";
    return cell;
}

- (void) showView
{
   
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
