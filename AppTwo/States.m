//
//  States.m
//  AppTwo
//
//  Created by juan rocha on 10/9/14.
//  Copyright (c) 2014 JuanRocha. All rights reserved.
//

#import "States.h"
#import "Declarations.h"
#import "cellState.h"
#import "StateDetail.h"

@interface States ()

@end

@implementation States

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
    maStates = [NSMutableArray arrayWithObjects: @"JALISCO", @"CHIAPAS", @"CHIHUAHUA", @"GUANAJUATO", @"YUCATAN", @"QUINTANA ROO", @"SAN LUIS POTOSI", @"OAXACA", nil ];
    
    maStateCrest = [NSMutableArray arrayWithObjects: @"jalisco.png", @"chiapas.png", @"chihuahua.png", @"guanajuato.gif", @"yucatan.png", @"quintanaroo.png", @"sanluis.png", @"oaxaca.png", nil ];
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

/**********************************************************************************************
 Table Functions
 **********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 55;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //NSLog(@"cellFamily");
    static NSString *CellIdentifier = @"cellState";
    
    cellState *cell = (cellState *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[cellState alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.StateName.text       = maStates[indexPath.row];
    
    return cell;
}

//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    strSelectedState     = [NSString stringWithFormat:@"%@", maStates[indexPath.row]];
    strSelectedStateCrest= [NSString stringWithFormat:@"%@", maStateCrest[indexPath.row]];
    
    NSLog(@"strSelectedState %@", strSelectedState);
    
    NSString * storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
    UIViewController * vct = [storyboard instantiateViewControllerWithIdentifier:@"StateDetail"];
    //UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"StateDetail"];
    [self presentViewController:vct animated:YES completion:nil];
}


@end
