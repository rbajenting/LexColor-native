//
//  MachineOptionsViewController.m
//  LexColor-native
//
//  Created by Ringo Bajenting on 5/29/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import "MachineOptionsViewController.h"
#import "Utils.h"
#import "Data.h"
#import "RowContainer.h"

@interface MachineOptionsViewController ()

@end

@implementation MachineOptionsViewController
@synthesize _machineOptionsItems;
@synthesize _headerTitle;

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
    titleLabel.text = @"Machine Options";
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
    mainTitleLabel.text = _headerTitle;
    
    [scrollView addSubview:mainTitleLabel];
    
    yPos = yPos + mainTitleLabel.frame.size.height;
    
    for (Data *item in _machineOptionsItems) {
        
        // image label
        UILabel *imageLabel = Utils.getFormattedLabel;
        imageLabel.text = item._key;
        imageLabel.center = CGPointMake(self.view.center.x, yPos+12);
        [scrollView addSubview:imageLabel];
        
        yPos = yPos + imageLabel.frame.size.height;
        
        
        yPos = yPos + 10;
        
        if ([item._rowValue count] > 0) {
            for (RowContainer *row in item._rowValue) {
                CustomRow *rowView = Utils.getFormattedTableRow3Columns;
                
                CGRect frame = rowView.frame;
                frame.origin.y = yPos;
                rowView.frame = frame;
                rowView._column1.text = row._column1;
                rowView._column2.text = row._column2;
                rowView._column3.text = row._column3;
                
                if(row._isHeader) {
                    rowView._column1.backgroundColor = Utils.getColorLexmarkViolet;
                    rowView._column2.backgroundColor = Utils.getColorLexmarkViolet;
                    rowView._column3.backgroundColor = Utils.getColorLexmarkViolet;
                    rowView._column1.textColor = Utils.getColorLexmarkWhite;
                    rowView._column2.textColor = Utils.getColorLexmarkWhite;
                    rowView._column3.textColor = Utils.getColorLexmarkWhite;
                }
                
                [Utils resizeLabelHeight:rowView._column1];
                [Utils resizeLabelHeight:rowView._column2];
                [Utils resizeLabelHeight:rowView._column3];
                [Utils resizeRowHeight:rowView];
                
                [scrollView addSubview:rowView];
                
                yPos = yPos + rowView.frame.size.height - 1;
            }
            
            yPos = yPos + 10;
            
        }
    }
    
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width, yPos+70);
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
