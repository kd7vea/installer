//
//  ServiceNumberTableViewController.m
//  AlarmInstaller
//
//  Created by Jake Estepp on 11/5/15.
//  Copyright © 2015 Jake Estepp. All rights reserved.
//

#import "ServiceNumberTableViewController.h"
#import "ServiceEntry.h"
#import "ServiceController.h"
#import "serviceTableViewController.h"

@interface ServiceNumberTableViewController ()
@property (nullable, nonatomic, retain) NSNumber *serviceNumber;
@end

@implementation ServiceNumberTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)viewWillAppear:(BOOL)animated {
    
    [self.tableView reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [ServiceController sharedInstance].services.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"serviceNumbercell"];
    Service *service = [ServiceController sharedInstance].services[indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"Service Number: %@", service.serviceNumber];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
}










/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([segue.identifier isEqualToString:@"showExistingServiceRecord"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    Service *service = [ServiceController sharedInstance].services[indexPath.row];
        
    serviceTableViewController *viewController = [segue destinationViewController];
        
        viewController.serviceNumber = service.serviceNumber;
        viewController.address = service.address;
        viewController.city = service.city;
        viewController.state = service.state;
        viewController.zipCode = service.zipCode;
        viewController.startTime = service.startTime;
        viewController.endTime = service.endTime;
        viewController.servicePerformed = service.servicePerformed;
        viewController.mileage = service.mileage;

    }

}


@end
