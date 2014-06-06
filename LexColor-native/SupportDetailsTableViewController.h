//
//  SupportDetailsTableViewController.h
//  LexColor-native
//
//  Created by Ringo Bajenting on 6/5/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface SupportDetailsTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *nameLabels;
@property (nonatomic, strong) NSArray *descLabels;
@property (nonatomic, strong) NSArray *supportItems;
@property (strong, nonatomic) MPMoviePlayerController *moviePlayer;
-(void)playMovie:(id)sender :(NSString *) link;
@end

