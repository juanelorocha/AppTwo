//
//  cellState.m
//  AppTwo
//
//  Created by juan rocha on 10/9/14.
//  Copyright (c) 2014 JuanRocha. All rights reserved.
//

#import "cellState.h"

@implementation cellState

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
