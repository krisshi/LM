//
//  ChatListTableViewController.m
//  LMiPhone
//
//  Created by kris on 9/17/14.
//  Copyright (c) 2014 kris. All rights reserved.
//

#import "ChatListTableViewController.h"
#import "ChatListCell.h"
#import "LoginTableViewController.h"
@interface ChatListTableViewController (){
    BOOL _isLoading;
}

@end

@implementation ChatListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    _isLoading = YES;
    
}
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    if (_isLoading&&![[NSUserDefaults standardUserDefaults] objectForKey:@"username"]) {
        UIStoryboard * userStoryboard = [UIStoryboard storyboardWithName:@"UserStoryboard" bundle:nil ];
        LoginTableViewController *oLoginTableViewController = [userStoryboard instantiateViewControllerWithIdentifier:@"LMNavLogin"];
        [KeyWindow.rootViewController presentViewController:oLoginTableViewController animated:YES completion:^(void){
            _isLoading = NO;
        }];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ChatListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ChatListCell" forIndexPath:indexPath];
    cell.lblName.text = @"小明";
    cell.lblDetails.text = @"sagasdgas所噶水电费煽风点火水电费法国号sagasdgas所噶水电费煽风点火水电费法国号sagasdgas所噶水电费煽风点火水电费法国号";
    cell.lblLastTime.text = @"上午10:10";
    cell.imageView.image = [UIImage imageNamed:@"tabbar_icon_0"];
    return cell;
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
