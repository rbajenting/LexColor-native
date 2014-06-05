//
//  EmailViewController.m
//  LexColor-native
//
//  Created by Ringo Bajenting on 6/2/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import "EmailViewController.h"
#import <MessageUI/MFMailComposeViewController.h>
#import "Utils.h"

@interface EmailViewController ()

@end

@implementation EmailViewController
@synthesize _link;
@synthesize _product;
@synthesize _fileData;

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openEmail
{
    MFMailComposeViewController *mailComposer = [[MFMailComposeViewController alloc] init];
    [mailComposer setMailComposeDelegate:self];
    
    if ([MFMailComposeViewController canSendMail]) {
        [mailComposer setToRecipients:[NSArray arrayWithObjects:@"", nil]];
        [mailComposer setSubject:[NSString stringWithFormat:@"%@ Specifications",_product]];
        [mailComposer setMessageBody:[NSString stringWithFormat:@"Please refer to this link for the <a href=\"%@\">%@ Product Specifications</a>.",_link,_product] isHTML:YES];
        /*if ([self grabPDFFromLink]) {
            [mailComposer addAttachmentData:_fileData mimeType:@"application/pdf" fileName:[NSString stringWithFormat:@"%@.pdf",_product]];
            [mailComposer setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
            [self presentViewController:mailComposer animated:YES completion:nil];
            [mailComposer release];
        } else {
            [mailComposer release];
        }*/
        [mailComposer setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
        [self presentViewController:mailComposer animated:YES completion:nil];
        [mailComposer release];
        
    } else {
        [mailComposer release];
    }
}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    if (error) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Problem Sending Email" message:[NSString stringWithFormat:@"Error %@", [error description]] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
        [alert release];
        [self dismissModalViewControllerAnimated:YES];
    }
    
    [self dismissModalViewControllerAnimated:YES];
}

- (UIWebView*) loadWebView:(NSString*) link
{
    UIWebView *webView = [[UIWebView alloc] init];
    NSURL *url = [NSURL URLWithString:link];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestURL];
    
    return webView;
}

- (BOOL) grabPDFFromLink
{
    BOOL success = YES;
    
    NSData *pdfData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:_link]];
    NSString *resourceDocPath = [[NSString alloc] initWithString:[[[[NSBundle mainBundle] resourcePath] stringByDeletingLastPathComponent] stringByAppendingPathComponent:@"Documents"]];
    
    NSString *filePath = [resourceDocPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.pdf",_product]];
    
    if(![[NSFileManager defaultManager] fileExistsAtPath:filePath]) {
        success = [pdfData writeToFile:filePath atomically:YES];
        
        if(!success) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Problem Retrieving File" message:@"A problem was encountered and the file was not successfully saved." delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
            [alert show];
            [alert release];
        } else {
            _fileData = [NSData dataWithContentsOfFile:filePath];
        }
    }
    
    return success;
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

@end
