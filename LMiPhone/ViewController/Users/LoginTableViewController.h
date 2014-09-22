//
//  LoginTableViewController.h
//  LMiPhone
//
//  Created by kris on 9/19/14.
//  Copyright (c) 2014 kris. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginTableViewController : UITableViewController
@property (strong, nonatomic) IBOutlet UITextField *tfUserName;
@property (strong, nonatomic) IBOutlet UITextField *tfPassword;

- (IBAction)actionCancel:(id)sender;
@end
