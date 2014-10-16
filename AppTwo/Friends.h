//
//  Friends.h
//  AppTwo
//
//  Created by juan rocha on 10/9/14.
//  Copyright (c) 2014 JuanRocha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Friends : UIViewController
@property (strong, nonatomic) IBOutlet UISegmentedControl *scFriends;

- (IBAction)scFriends:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *tbMyTable;

@end
