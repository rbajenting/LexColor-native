//
//  SupportTableViewCell.m
//  LexColor-native
//
//  Created by Ringo Bajenting on 6/5/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import "SupportTableViewCell.h"

@implementation SupportTableViewCell
@synthesize nameLabel = _nameLabel;
@synthesize descLabel = _descLabel;
@synthesize imageView = _imageView;


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
