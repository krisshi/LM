//
//  ChatListCell.h
//  LMiPhone
//
//  Created by kris on 9/18/14.
//  Copyright (c) 2014 kris. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatListCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *ivHead;
@property (strong, nonatomic) IBOutlet UILabel *lblDetails;
@property (strong, nonatomic) IBOutlet UILabel *lblLastTime;

@property (strong, nonatomic) IBOutlet UILabel *lblName;
@end
