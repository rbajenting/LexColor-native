//
//  SupportLinkViewController.h
//  LexColor-native
//
//  Created by Ringo Bajenting on 6/6/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SupportLinkViewController : UIViewController
@property (retain, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic, strong) NSString *link;
@property (nonatomic, strong) NSString *headerTitle;
@end
