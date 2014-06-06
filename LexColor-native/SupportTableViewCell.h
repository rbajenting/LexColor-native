//
//  SupportTableViewCell.h
//  LexColor-native
//
//  Created by Ringo Bajenting on 6/5/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SupportTableViewCell : UITableViewCell
@property (nonatomic, strong) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) IBOutlet UILabel *nameLabel;
@property (nonatomic, strong) IBOutlet UILabel *descLabel;
@end
