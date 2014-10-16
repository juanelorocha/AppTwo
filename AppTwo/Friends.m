//
//  Friends.m
//  AppTwo
//
//  Created by juan rocha on 10/9/14.
//  Copyright (c) 2014 JuanRocha. All rights reserved.
//

#import "Friends.h"
#import "Declarations.h"
#import "FriendCell.h"

@interface Friends ()

@end

@implementation Friends

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    maFriendsName = [NSMutableArray arrayWithObjects:@"Adauco", @"Alan", @"Miguel Angel", @"Gus", @"Nubia", @"Deyanira", nil];
    maFriendsSurName = [NSMutableArray arrayWithObjects:@"Quezada", @"Diaz", @"Leon", @"Munoz", @"Martinez", @"Carreon", nil];
    maFriendsAge = [NSMutableArray arrayWithObjects:@"30", @"31", @"31", @"30", @"31", @"31", nil];
    maFriendsPhoto = [NSMutableArray arrayWithObjects:@"adauco.jpg", @"alan.jpg", @"pollo.jpg", @"gus.jpg", @"nubia.jpg", @"deya.jpg", nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)scFriends:(id)sender {
    if (self.scFriends.selectedSegmentIndex==0){
        maFriendsName = [NSMutableArray arrayWithObjects:@"Adauco", @"Alan", @"Miguel Angel", @"Gus", @"Nubia", @"Deyanira", nil];
        maFriendsSurName = [NSMutableArray arrayWithObjects:@"Quezada", @"Diaz", @"Leon", @"Munoz", @"Martinez", @"Carreon", nil];
        maFriendsAge = [NSMutableArray arrayWithObjects:@"30", @"31", @"31", @"30", @"31", @"31", nil];
        maFriendsPhoto = [NSMutableArray arrayWithObjects:@"adauco.jpg", @"alan.jpg", @"pollo.jpg", @"gus.jpg", @"nubia.jpg", @"deya.jpg", nil];
    }else{
        maFriendsName = [NSMutableArray arrayWithObjects:@"Azucena", @"Cesar", @"Yarib", @"Milton", @"Carlos", @"Erika", nil];
        maFriendsSurName = [NSMutableArray arrayWithObjects:@"Coronado", @"Barragan", @"Nevarez", @"Montiel", @"Vega", @"Vilagrana", nil];
        maFriendsAge = [NSMutableArray arrayWithObjects:@"26", @"30", @"27", @"32", @"25", @"33", nil];
        maFriendsPhoto = [NSMutableArray arrayWithObjects:@"azucena.jpg", @"cesar.jpg", @"yarib.jpg", @"milton.jpg", @"vega.jpg", @"erika.jpg", nil];
    }
    self.tbMyTable.reloadData;
}

/**********************************************************************************************
 Table Functions
 *********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 90;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //NSLog(@"cellFamily");
    static NSString *CellIdentifier = @"FriendCell";
    
    FriendCell *cell = (FriendCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[FriendCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.lblAge.text = maFriendsAge[indexPath.row];
    cell.lblName.text = maFriendsName [indexPath.row];
    cell.lblSurname.text = maFriendsSurName [indexPath.row];
    cell.imgFriendPhoto.image = [UIImage imageNamed:maFriendsPhoto[indexPath.row]];
    return cell;
}

//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}

@end
