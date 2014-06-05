//
//  EmailViewController.h
//  LexColor-native
//
//  Created by Ringo Bajenting on 6/2/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MFMailComposeViewController.h>

@interface EmailViewController : UIViewController <MFMailComposeViewControllerDelegate> {
    
}

- (IBAction)openEmail;
- (BOOL) grabPDFFromLink;
@property (nonatomic, strong) NSString *_product;
@property (nonatomic, strong) NSString *_link;
@property (nonatomic, strong) NSData *_fileData;

@end
