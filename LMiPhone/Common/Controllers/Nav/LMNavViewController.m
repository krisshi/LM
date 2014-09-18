//
//  LMNavViewController.m
//  LMiPhone
//
//  Created by kris on 9/17/14.
//  Copyright (c) 2014 kris. All rights reserved.
//

#import "LMNavViewController.h"

@interface LMNavViewController ()

@end

@implementation LMNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationBar.translucent = NO;
    UIColor * cc = [UIColor whiteColor];
    NSDictionary * dict = [NSDictionary dictionaryWithObject:cc forKey:NSForegroundColorAttributeName];
    self.navigationBar.titleTextAttributes = dict;
    [self.navigationBar setTintColor: cc];
    [self.navigationBar setBarTintColor:MainColor];
    [self.navigationBar setTranslucent:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
