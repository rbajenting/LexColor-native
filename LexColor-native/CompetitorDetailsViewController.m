//
//  CompetitorDetailsViewController.m
//  LexColor-native
//
//  Created by Ringo Bajenting on 6/5/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import "CompetitorDetailsViewController.h"
#import "Utils.h"
#import "Data.h"
#import "RowContainer.h"
#import "DataFactory.h"

@interface CompetitorDetailsViewController ()

@end

@implementation CompetitorDetailsViewController
@synthesize _competitorDetailItems;
@synthesize _product;

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
    
    // set up navigation bar
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"headerbackground.png"] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.translucent = NO;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 180, 30)];
    titleLabel.textColor = Utils.getColorLexmarkWhite;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:16];
    titleLabel.text = @"Competitor Specifications";
    self.navigationItem.titleView = titleLabel;
    
    // set up scroll view
    UIScrollView* scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    scrollView.backgroundColor = [UIColor whiteColor];
    scrollView.scrollEnabled = YES;
    scrollView.pagingEnabled = YES;
    scrollView.showsVerticalScrollIndicator = YES;
    scrollView.showsHorizontalScrollIndicator = YES;
    [self.view addSubview:scrollView];
    
    int yPos = 0;
    
    UILabel *mainTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, yPos, self.view.bounds.size.width, 40)];
    mainTitleLabel.textColor = Utils.getColorLexmarkViolet;
    mainTitleLabel.textAlignment = NSTextAlignmentCenter;
    [mainTitleLabel setShadowColor:[UIColor darkGrayColor]];
    [mainTitleLabel setShadowOffset:CGSizeMake(0, -0.5)];
    mainTitleLabel.center = CGPointMake(self.view.center.x, yPos+20);
    mainTitleLabel.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:24];
    mainTitleLabel.text = _product.name;
    mainTitleLabel.numberOfLines = 3;
    [mainTitleLabel sizeToFit];
    [mainTitleLabel layoutIfNeeded];
    
    [scrollView addSubview:mainTitleLabel];
    
    yPos = yPos + mainTitleLabel.frame.size.height;
    
    _competitorDetailItems = [DataFactory getCompetitorSpecItems:_product.productType];
    for (Data *item in _competitorDetailItems) {
        
        // image label
        UILabel *imageLabel = Utils.getFormattedLabel;
        imageLabel.text = item._key;
        imageLabel.center = CGPointMake(self.view.center.x, yPos+12);
        [scrollView addSubview:imageLabel];
        
        yPos = yPos + imageLabel.frame.size.height;
        
        if (item._type == enum_infotype_text) {
            // text
            UITextView *textView = Utils.getFormattedTextView;
            textView.text = item._stringValue;
            textView.frame = CGRectMake(0, yPos, 320, 20);
            textView.textColor = Utils.getColorLexmarkDarkGray;
            [scrollView addSubview:textView];
            [textView sizeToFit];
            [textView layoutIfNeeded];
            textView.scrollEnabled = NO;
            
            yPos = yPos + textView.frame.size.height;
        } else if (item._type == enum_infotype_image) {
            
            yPos = yPos + 10;
            // image
            UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(37, yPos, 246, 246)];
            imageView.image = [UIImage imageNamed:item._stringValue];
            [scrollView addSubview:imageView];
            
            yPos = yPos + imageView.frame.size.height + 10;
        }
    }
    
    yPos = yPos + mainTitleLabel.frame.size.height;
    
    
    
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width, yPos+5);
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

@end
