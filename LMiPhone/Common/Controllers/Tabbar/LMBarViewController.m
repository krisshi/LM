//
//  LMBarViewController.m
//  LMiPhone
//
//  Created by kris on 9/17/14.
//  Copyright (c) 2014 kris. All rights reserved.
//

#import "LMBarViewController.h"

@interface LMBarViewController ()

@end

@implementation LMBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabBar.tintColor = [UIColor whiteColor];
    UIView *bgView = [[UIView alloc] initWithFrame:self.tabBar.bounds];
    bgView.backgroundColor = [UIColor colorWithRed:61/255.f green:46/255.f blue:98/255.f alpha:1];
    [self.tabBar insertSubview:bgView atIndex:0];
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
