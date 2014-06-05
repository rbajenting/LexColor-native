//
//  ProductDetailsViewController.m
//  LexColor-native
//
//  Created by Ringo Bajenting on 5/22/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import "ProductDetailsViewController.h"
#import "SuppliesMatrixViewController.h"
#import "MachineOptionsViewController.h"
#import "TaaInformationViewController.h"
#import "EmailViewController.h"
#import "Utils.h"
#import "ProductSpecsViewController.h"
#import "DataFactory.h"

@interface ProductDetailsViewController ()

@end

@implementation ProductDetailsViewController
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
    
    // set up navigation bar
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"headerbackground.png"] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.translucent = NO;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 180, 30)];
    titleLabel.textColor = Utils.getColorLexmarkWhite;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:16];
    titleLabel.text = _product.navTitle;
    self.navigationItem.titleView = titleLabel;
    
    
    // set up scroll view
    UIScrollView* scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    scrollView.scrollEnabled = YES;
    scrollView.pagingEnabled = YES;
    scrollView.showsVerticalScrollIndicator = YES;
    scrollView.showsHorizontalScrollIndicator = YES;
    [self.view addSubview:scrollView];
 
    // main title
    int yPos = 0;
    
    UILabel *mainTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, yPos, self.view.bounds.size.width, 40)];
    mainTitleLabel.textColor = Utils.getColorLexmarkViolet;
    mainTitleLabel.textAlignment = NSTextAlignmentCenter;
    [mainTitleLabel setShadowColor:[UIColor darkGrayColor]];
    [mainTitleLabel setShadowOffset:CGSizeMake(0, -0.5)];
    mainTitleLabel.center = CGPointMake(self.view.center.x, yPos+20);
    mainTitleLabel.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:24];
    mainTitleLabel.text = _product.headerTitle;
    
    [scrollView addSubview:mainTitleLabel];
    
    yPos = yPos + mainTitleLabel.frame.size.height;
    
    // image label
    UILabel *imageLabel = Utils.getFormattedLabel;
    imageLabel.text = [NSString stringWithFormat:@"%@",@" • Product Image:"];
    imageLabel.center = CGPointMake(self.view.center.x, yPos+12);
    [scrollView addSubview:imageLabel];
    
    yPos = yPos + imageLabel.frame.size.height + 10;
    
    // image
    UIImageView *productImageView = [[UIImageView alloc] initWithFrame:CGRectMake(37, yPos, 246, 246)];
    productImageView.image = [UIImage imageNamed:_product.image];
    [scrollView addSubview:productImageView];
    
    yPos = yPos + productImageView.frame.size.height + 10;
    
    // desc label
    UILabel *descLabel = Utils.getFormattedLabel;
    descLabel.text = [NSString stringWithFormat:@"%@",@" • Product Description:"];
    descLabel.center = CGPointMake(self.view.center.x, yPos+12);
    [scrollView addSubview:descLabel];
    
    yPos = yPos + descLabel.frame.size.height;
    
    // desc
    UITextView *descTextView = Utils.getFormattedTextView;
    descTextView.text = _product.descDetails;
    descTextView.frame = CGRectMake(0, yPos, 320, 20);
    descTextView.textColor = Utils.getColorLexmarkDarkGray;
    [scrollView addSubview:descTextView];
    [descTextView sizeToFit];
    [descTextView layoutIfNeeded];
    descTextView.scrollEnabled = NO;
    
    yPos = yPos + descTextView.frame.size.height;
    
    // detail option label
    UILabel *detailsLabel = Utils.getFormattedLabel;
    detailsLabel.text = [NSString stringWithFormat:@"%@",@" • Product Details:"];
    detailsLabel.center = CGPointMake(self.view.center.x, yPos+12);
    [scrollView addSubview:detailsLabel];
    
    yPos = yPos + detailsLabel.frame.size.height + 30;
    
    // details button set
    // product specifications
    UIButton *productSpecsButton = Utils.getFormattedButton;
    productSpecsButton.center = CGPointMake(self.view.center.x, yPos);
    [scrollView addSubview:productSpecsButton];
    [productSpecsButton setTitle:@"Product Specifications" forState:UIControlStateNormal];
    [productSpecsButton addTarget:self action:@selector(pushProductSpecsViewController) forControlEvents:UIControlEventTouchUpInside];
    
    yPos = yPos + productSpecsButton.frame.size.height + 10;
    
    // product matrix
    UIButton *productMatrixButton = Utils.getFormattedButton;
    productMatrixButton.center = CGPointMake(self.view.center.x, yPos);
    [scrollView addSubview:productMatrixButton];
    [productMatrixButton setTitle:@"Supplies Matrix" forState:UIControlStateNormal];
    [productMatrixButton addTarget:self action:@selector(pushSuppliesMatrixViewController) forControlEvents:UIControlEventTouchUpInside];
    
    yPos = yPos + productMatrixButton.frame.size.height + 10;
    
    if (_product.hasMachineOption) {
        // machine option
        UIButton *machineOptionButton = Utils.getFormattedButton;
        machineOptionButton.center = CGPointMake(self.view.center.x, yPos);
        [scrollView addSubview:machineOptionButton];
        [machineOptionButton setTitle:@"Machine Options" forState:UIControlStateNormal];
        [machineOptionButton addTarget:self action:@selector(pushMachineOptionsViewController) forControlEvents:UIControlEventTouchUpInside];
        
        yPos = yPos + machineOptionButton.frame.size.height + 10;
    }
    
    // taa info
    UIButton *taaInfoButton = Utils.getFormattedButton;
    taaInfoButton.center = CGPointMake(self.view.center.x, yPos);
    [scrollView addSubview:taaInfoButton];
    [taaInfoButton setTitle:@"TAA Information" forState:UIControlStateNormal];
    [taaInfoButton addTarget:self action:@selector(pushTaaInformationViewController) forControlEvents:UIControlEventTouchUpInside];
    
    yPos = yPos + taaInfoButton.frame.size.height + 10;
    
    // send product specs
    UIButton *sendSpecsButton = Utils.getFormattedButton;
    sendSpecsButton.center = CGPointMake(self.view.center.x, yPos);
    [scrollView addSubview:sendSpecsButton];
    [sendSpecsButton setTitle:@"Send Product Specs" forState:UIControlStateNormal];
    [sendSpecsButton addTarget:self action:@selector(pushEmailViewController) forControlEvents:UIControlEventTouchUpInside];
    
    yPos = yPos + sendSpecsButton.frame.size.height + 10;
    
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width, yPos+50);

}

- (IBAction)pushProductSpecsViewController
{
    ProductSpecsViewController *productSpecsViewController = [[ProductSpecsViewController alloc] init];
    productSpecsViewController._headerTitle = _product.headerTitle;
    productSpecsViewController._productSpecsItems = [DataFactory getProductSpecItems:_product.productType];
    [self.navigationController pushViewController:productSpecsViewController animated:YES];
}

- (IBAction)pushSuppliesMatrixViewController
{
    SuppliesMatrixViewController *suppliesMatrixViewController = [[SuppliesMatrixViewController alloc] init];
    suppliesMatrixViewController._headerTitle = _product.headerTitle;
    suppliesMatrixViewController._suppliesMatrixItems = [DataFactory getSuppliesMatrixItems:_product.productType];
    [self.navigationController pushViewController:suppliesMatrixViewController animated:YES];
}

- (IBAction)pushMachineOptionsViewController
{
    MachineOptionsViewController *machineOptionsViewController = [[MachineOptionsViewController alloc] init];
    machineOptionsViewController._headerTitle = _product.headerTitle;
    machineOptionsViewController._machineOptionsItems = [DataFactory getMachineOptionsItems:_product.productType];
    [self.navigationController pushViewController:machineOptionsViewController animated:YES];
}

- (IBAction)pushTaaInformationViewController
{
    TaaInformationViewController *taaInformationViewController = [[TaaInformationViewController alloc] init];
    taaInformationViewController._headerTitle = _product.headerTitle;
    taaInformationViewController._taaOrderingMatrixItems = [DataFactory getTaaOrderingMatrixItems:_product.productType];
    taaInformationViewController._taaSuppliesMatrixItems = [DataFactory getTaaSuppliesMatrixItems:_product.productType];
    [self.navigationController pushViewController:taaInformationViewController animated:YES];
}

- (IBAction)pushEmailViewController
{
    //BDNMailLauncher *mailLauncher = [[BDNMailLauncher alloc] init];
    //mailLauncher._product = @"X792";
    //mailLauncher._specs = @"X92 Family Brochure.pdf";
    //mailLauncher.launchMailComposer;
    EmailViewController *emailViewController = [[EmailViewController alloc] init];
    emailViewController._product = _product.shortName;
    emailViewController._link = _product.brochureLink;
    emailViewController.openEmail;
    [self addChildViewController:emailViewController];
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
