//
//  AppDelegate.m
//  LexColor-native
//
//  Created by Ringo Bajenting on 5/21/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import "AppDelegate.h"
#import "Product.h"
#import "ProductsViewController.h"
#import "CompetitorsTableViewController.h"
#import "SupportTableViewController.h"

@implementation AppDelegate
{
    // products
    NSMutableArray *_series79x;
    NSMutableArray *_series74x;
    NSMutableArray *_series51x;
    NSMutableArray *_series41x;
    NSMutableArray *_series31x;
    NSMutableArray *_series92x;
    NSMutableArray *_series95x;
    
    // competitors
    NSMutableArray *_x792Competitors;
    NSMutableArray *_c792Competitors;
    NSMutableArray *_x746Competitors;
    NSMutableArray *_x748Competitors;
    NSMutableArray *_c746Competitors;
    NSMutableArray *_c748Competitors;
    NSMutableArray *_cx510Competitors;
    NSMutableArray *_cs510Competitors;
    NSMutableArray *_cx410Competitors;
    NSMutableArray *_cs410Competitors;
    NSMutableArray *_cx310Competitors;
    NSMutableArray *_cs310Competitors;
    NSMutableArray *_x925Competitors;
    NSMutableArray *_c925Competitors;
    NSMutableArray *_x950Competitors;
    NSMutableArray *_x954Competitors;
    NSMutableArray *_c950Competitors;
    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    /*
     *product list
     */
   
    _series79x = [NSMutableArray array];
    _series74x = [NSMutableArray array];
    _series51x = [NSMutableArray array];
    _series41x = [NSMutableArray array];
    _series31x = [NSMutableArray array];
    _series92x = [NSMutableArray array];
    _series95x = [NSMutableArray array];
    
    Product *product = [[Product alloc] init];
    product.name = @"X792 Range of Products";
    product.desc = @"Touch Screen Multifunction Printer";
    product.image = @"X792dePIC.png";
    product.descDetails = @"The huge 10.2-inch color touchscreen makes it simple to use all the powerful features of the X792 Series. Get professional quality results with built-in duplexing, optional finishing and brilliant printing.";
    product.navTitle = @"X792 Products";
    product.headerTitle = @"Lexmark X792 Products";
    product.productType = enum_producttype_X792;
    product.hasSuppliesMatrix = YES;
    product.hasProductMatrix = NO;
    product.hasMachineOption = YES;
    product.shortName = @"X792";
    product.brochureLink = @"http://media.lexmark.com/www/doc/en_US/Lexmark-X792.pdf";
    [_series79x addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"C792 Range of Products";
    product.desc = @"Touch Screen Color Printer";
    product.image = @"C792pic.png";
    product.descDetails = @"Easy-to-use touchscreens and available high input capacity makes getting work done even easier. The crisp, vivid color printing from the Lexmark C790 Series keeps your medium-size office group ready for business.";
    product.navTitle = @"C792 Products";
    product.headerTitle = @"Lexmark C792 Products";
    product.productType = enum_producttype_C792;
    product.hasSuppliesMatrix = NO;
    product.hasProductMatrix = YES;
    product.hasMachineOption = NO;
    product.shortName = @"C792";
    product.brochureLink = @"http://media.lexmark.com/www/doc/en_US/Lexmark-C792.pdf";
    [_series79x addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"X746 Range of Products";
    product.desc = @"Touch Screen Multifunction Device";
    [_series74x addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"X748 Range of Products";
    product.desc = @"Touch Screen Multifunction Device";
    [_series74x addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"C746 Range of Products";
    product.desc = @"Color Printer";
    [_series74x addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"C748 Range of Products";
    product.desc = @"Touch Screen Color Printer";
    [_series74x addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"CX510 Range of Products";
    product.desc = @"Touch Screen Multifunction Device";
    [_series51x addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"CS510 Range of Products";
    product.desc = @"Touch Screen Color Printer";
    [_series51x addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"CX410 Range of Products";
    product.desc = @"Touch Screen Multifunction Device";
    [_series41x addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"CS410 Range of Products";
    product.desc = @"Touch Screen Color Printer";
    [_series41x addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"CX310 Range of Products";
    product.desc = @"Touch Screen Multifunction Device";
    [_series31x addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"CS310 Range of Products";
    product.desc = @"Touch Screen Color Printer";
    [_series31x addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"X925 Range of Products";
    product.desc = @"Touch Screen Multifunction Device";
    [_series92x addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"C925 Range of Products";
    product.desc = @"Touch Screen Color Printer";
    [_series92x addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"X950 Range of Products";
    product.desc = @"Touch Screen Multifunction Device";
    [_series95x addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"X954 Range of Products";
    product.desc = @"Touch Screen Multifunction Device";
    [_series95x addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"C950 Range of Products";
    product.desc = @"Touch Screen Color Printer";
    [_series92x addObject:product];
    [product release];
    
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    UINavigationController *navigationController = [tabBarController viewControllers][0];
    ProductsViewController *productsViewController = [navigationController viewControllers][0];
    productsViewController.series79x = _series79x;
    productsViewController.series74x = _series74x;
    productsViewController.series51x = _series51x;
    productsViewController.series41x = _series41x;
    productsViewController.series31x = _series31x;
    productsViewController.series92x = _series92x;
    productsViewController.series95x = _series95x;
    
    /*
     *competitors list
     */
    
    _x792Competitors = [NSMutableArray array];
    _c792Competitors = [NSMutableArray array];
    _x746Competitors = [NSMutableArray array];
    _x748Competitors = [NSMutableArray array];
    _c746Competitors = [NSMutableArray array];
    _c748Competitors = [NSMutableArray array];
    _cx510Competitors = [NSMutableArray array];
    
    _cs510Competitors = [NSMutableArray array];
    _cx410Competitors = [NSMutableArray array];
    _cs410Competitors = [NSMutableArray array];
    _cx310Competitors = [NSMutableArray array];
    _cs310Competitors = [NSMutableArray array];
    _x925Competitors = [NSMutableArray array];
    _c925Competitors = [NSMutableArray array];
    _x950Competitors = [NSMutableArray array];
    _x954Competitors = [NSMutableArray array];
    _c950Competitors = [NSMutableArray array];
    
    // X792 Competitors
    
    product = [[Product alloc] init];
    product.name = @"HP Color LaserJet Enterprise CM4540 MFP";
    product.desc = @"Multifunction Color Printer";
    product.image = @"HP.png";
    product.productType = enum_competitortype_HP_CM4540;
    [_x792Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Ricoh Aficio MP C400";
    product.desc = @"Multifunction Color Printer";
    product.image = @"ricoh.png";
    [_x792Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Sharp MX-C402SC";
    product.desc = @"Multifunction Color Printer";
    product.image = @"Sharp.png";
    [_x792Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Xerox ColorQube 8900X";
    product.desc = @"Multifunction Color Printer";
    product.image = @"Xerox.png";
    [_x792Competitors addObject:product];
    
    // C792 Competitors
    product = [[Product alloc] init];
    product.name = @"HP Color LaserJet Enterprise CP4525n";
    product.desc = @"Single Function Color Printer";
    product.image = @"HP.png";
    [_c792Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"KYOCERA FS-C5400DN";
    product.desc = @"Single Function Color Printer";
    product.image = @"Kyocera.png";
    [_c792Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Ricoh Aficio SP C431DN";
    product.desc = @"Single Function Color Printer";
    product.image = @"ricoh.png";
    [_c792Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Xerox ColorQube 8870DN";
    product.desc = @"Single Function Color Printer";
    product.image = @"Xerox.png";
    [_c792Competitors addObject:product];
    [product release];
    
    // X746 Competitors
    product = [[Product alloc] init];
    product.name = @"HP LaserJet Enterprise 500 color MFP M575dn";
    product.desc = @"Multifunction Color Printer";
    product.image = @"HP.png";
    [_x746Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Konica Minolta bizhub C25";
    product.desc = @"Multifunction Color Printer";
    product.image = @"KM.png";
    [_x746Competitors addObject:product];
    [product release];
    
    // X748 Competitors
    product = [[Product alloc] init];
    product.name = @"HP LaserJet Enterprise color flow MFP M575c";
    product.desc = @"Multifunction Color Printer";
    product.image = @"HP.png";
    [_x748Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Konica Minolta bizhub C35";
    product.desc = @"Multifunction Color Printer";
    product.image = @"KM.png";
    [_x748Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Xerox ColorQube 8700S";
    product.desc = @"Multifunction Color Printer";
    product.image = @"Xerox.png";
    [_x748Competitors addObject:product];
    [product release];
    
    // c746 competitors
    product = [[Product alloc] init];
    product.name = @"HP LaserJet Enterprise 500 color M551n";
    product.desc = @"Single Function Color Printer";
    product.image = @"HP.png";
    [_c746Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Kyocera FS-C5250DN";
    product.desc = @"Single Function Color Printer";
    product.image = @"Kyocera.png";
    [_c746Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Ricoh Aficio SP C430DN";
    product.desc = @"Single Function Color Printer";
    product.image = @"ricoh.png";
    [_c746Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Xerox ColorQube 8570N";
    product.desc = @"Single Function Color Printer";
    product.image = @"Xerox.png";
    [_c746Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Xerox Phaser 6010NN";
    product.desc = @"Single Function Color Printer";
    product.image = @"Xerox.png";
    [_c746Competitors addObject:product];
    [product release];
    
    // c748 competitors
    product = [[Product alloc] init];
    product.name = @"HP Color LaserJet Enterprise CP4025n";
    product.desc = @"Single Function Color Printer";
    product.image = @"HP.png";
    [_c748Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Kyocera FS-C5300DN";
    product.desc = @"Single Function Color Printer";
    product.image = @"Kyocera.png";
    [_c748Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Ricoh Aficio SP C430DN";
    product.desc = @"Single Function Color Printer";
    product.image = @"ricoh.png";
    [_c748Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Xerox ColorQube 8570N";
    product.desc = @"Single Function Color Printer";
    product.image = @"Xerox.png";
    [_c748Competitors addObject:product];
    [product release];
    
    // cx510 competitors
    product = [[Product alloc] init];
    product.name = @"Canon Color imageCLASS MF9280Cdn";
    product.desc = @"Multifunction Color Printer";
    product.image = @"Canon.png";
    [_cx510Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"HP LaserJet Pro 500 color MFP M570dn";
    product.desc = @"Multifunction Color Printer";
    product.image = @"HP.png";
    [_cx510Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Konica Minolta bizhub C20X";
    product.desc = @"Multifunction Color Printer";
    product.image = @"KM.png";
    [_cx510Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Xerox WorkCentre 6605N";
    product.desc = @"Multifunction Color Printer";
    product.image = @"Xerox.png";
    [_cx510Competitors addObject:product];
    [product release];
    
    // cs510 competitors
    product = [[Product alloc] init];
    product.name = @"Brother HL-4570CDW";
    product.desc = @"Single Function Color Printer";
    product.image = @"Bro.png";
    [_cs510Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"HP LaserJet Pro 400 Color M451nw";
    product.desc = @"Single Function Color Printer";
    product.image = @"HP.png";
    [_cs510Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Ricoh Aficio SP C320DN";
    product.desc = @"Single Function Color Printer";
    product.image = @"ricoh.png";
    [_cs510Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Xerox Phaser 6600N";
    product.desc = @"Single Function Color Printer";
    product.image = @"Xerox.png";
    [_cs510Competitors addObject:product];
    [product release];
    
    // cs410 competitors
    product = [[Product alloc] init];
    product.name = @"Brother MFC-9970CDW";
    product.desc = @"Multifunction Color Printer";
    product.image = @"Bro.png";
    [_cx410Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"HP LaserJet Pro 400 Color MFP M475";
    product.desc = @"Multifunction Color Printer";
    product.image = @"HP.png";
    [_cx410Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Xerox WorkCentre 6505N";
    product.desc = @"Multifunction Color Printer";
    product.image = @"Xerox.png";
    [_cx410Competitors addObject:product];
    [product release];
    
    // cs410 competitors
    product = [[Product alloc] init];
    product.name = @"Brother HL-4150CDN";
    product.desc = @"Single Function Color Printer";
    product.image = @"Bro.png";
    [_cs410Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Brother HL-4570CDW";
    product.desc = @"Single Function Color Printer";
    product.image = @"Bro.png";
    [_cs410Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"HP LaserJet Pro 400 Color M451nw";
    product.desc = @"Single Function Color Printer";
    product.image = @"HP.png";
    [_cs410Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Xerox Phaser 6500N";
    product.desc = @"Single Function Color Printer";
    product.image = @"Xerox.png";
    [_cs410Competitors addObject:product];
    [product release];
    
    // cx310 competitors
    product = [[Product alloc] init];
    product.name = @"Brother MFC-9460CDN";
    product.desc = @"Multifunction Color Printer";
    product.image = @"Bro.png";
    [_cx310Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"HP LaserJet Pro 200 Color MFP M276nw";
    product.desc = @"Multifunction Color Printer";
    product.image = @"HP.png";
    [_cx310Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Samsung CLX-4195FW";
    product.desc = @"Multifunction Color Printer";
    product.image = @"samsung.png";
    [_cx310Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Xerox WorkCentre 6015NI";
    product.desc = @"Multifunction Color Printer";
    product.image = @"Xerox.png";
    [_cx310Competitors addObject:product];
    [product release];
    
    // cs310 competitors
    product = [[Product alloc] init];
    product.name = @"Brother HL-3045CN";
    product.desc = @"Single Function Color Printer";
    product.image = @"Bro.png";
    [_cs310Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Brother HL-3075CW";
    product.desc = @"Single Function Color Printer";
    product.image = @"Bro.png";
    [_cs310Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"HP LaserJet Pro 200 Color M251nw";
    product.desc = @"Single Function Color Printer";
    product.image = @"HP.png";
    [_cs310Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Samsung CLP-415NW";
    product.desc = @"Single Function Color Printer";
    product.image = @"samsung.png";
    [_cs310Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Xerox Phaser 6010N";
    product.desc = @"Single Function Color Printer";
    product.image = @"Xerox.png";
    [_cs310Competitors addObject:product];
    [product release];
    
    // x925 competitors
    product = [[Product alloc] init];
    product.name = @"Canon imageRUNNER ADVANCE C2030";
    product.desc = @"Multifunction Color Printer";
    product.image = @"Canon.png";
    [_x925Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Konica Minolta bizhub C280";
    product.desc = @"Multifunction Color Printer";
    product.image = @"KM.png";
    [_x925Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Ricoh Aficio MP C3002";
    product.desc = @"Multifunction Color Printer";
    product.image = @"ricoh.png";
    [_x925Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Xerox WorkCentre 7120T";
    product.desc = @"Multifunction Color Printer";
    product.image = @"Xerox.png";
    [_x925Competitors addObject:product];
    [product release];
    
    // c925 competitors
    product = [[Product alloc] init];
    product.name = @"HP Color LaserJet Enterprise CP5525dn";
    product.desc = @"Single Function Color Printer";
    product.image = @"HP.png";
    [_c925Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Konica Minolta magicolor 7450 II grafx";
    product.desc = @"Single Function Color Printer";
    product.image = @"KM.png";
    [_c925Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"OKI C830dn";
    product.desc = @"Single Function Color Printer";
    product.image = @"OKI.png";
    [_c925Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Xerox Phaser 7100N";
    product.desc = @"Single Function Color Printer";
    product.image = @"Xerox.png";
    [_c925Competitors addObject:product];
    [product release];
    
    // x950 competitors
    product = [[Product alloc] init];
    product.name = @"Canon imageRUNNER ADVANCE C5051";
    product.desc = @"Multifunction Color Printer";
    product.image = @"Canon.png";
    [_x950Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Konica Minolta bizhub C554";
    product.desc = @"Multifunction Color Printer";
    product.image = @"KM.png";
    [_x950Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Ricoh Aficio MP C5502";
    product.desc = @"Multifunction Color Printer";
    product.image = @"ricoh.png";
    [_x950Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Xerox WorkCentre 7556";
    product.desc = @"Multifunction Color Printer";
    product.image = @"Xerox.png";
    [_x950Competitors addObject:product];
    [product release];
    
    // x954 competitors
    product = [[Product alloc] init];
    product.name = @"Canon imageRUNNER ADVANCE C5051";
    product.desc = @"Multifunction Color Printer";
    product.image = @"Canon.png";
    [_x954Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Konica Minolta bizhub C554";
    product.desc = @"Multifunction Color Printer";
    product.image = @"KM.png";
    [_x954Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Ricoh Aficio MP C5502";
    product.desc = @"Multifunction Color Printer";
    product.image = @"ricoh.png";
    [_x954Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Xerox WorkCentre 7556";
    product.desc = @"Multifunction Color Printer";
    product.image = @"Xerox.png";
    [_x954Competitors addObject:product];
    [product release];
    
    // c950 competitors
    product = [[Product alloc] init];
    product.name = @"HP Color LaserJet CP6015dn";
    product.desc = @"Single Function Color Printer";
    product.image = @"HP.png";
    [_c950Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"OKI C9650dn";
    product.desc = @"Single Function Color Printer";
    product.image = @"OKI.png";
    [_c950Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Ricoh Aficio SP C821DN";
    product.desc = @"Single Function Color Printer";
    product.image = @"ricoh.png";
    [_c950Competitors addObject:product];
    [product release];
    
    product = [[Product alloc] init];
    product.name = @"Xerox Phaser 7800DN";
    product.desc = @"Single Function Color Printer";
    product.image = @"Xerox.png";
    [_c950Competitors addObject:product];
    [product release];
    
    navigationController = [tabBarController viewControllers][1];
    CompetitorsTableViewController *competitorsTableViewController = [navigationController viewControllers][0];
    competitorsTableViewController.x792competitors = _x792Competitors;
    competitorsTableViewController.c792competitors = _c792Competitors;
    competitorsTableViewController.x746competitors = _x746Competitors;
    competitorsTableViewController.x748competitors = _x748Competitors;
    competitorsTableViewController.c746competitors = _c746Competitors;
    competitorsTableViewController.c748competitors = _c748Competitors;
    competitorsTableViewController.cx510competitors = _cx510Competitors;
    competitorsTableViewController.cs510competitors = _cs510Competitors;
    competitorsTableViewController.cx410competitors = _cx410Competitors;
    competitorsTableViewController.cs410competitors = _cs410Competitors;
    competitorsTableViewController.cx310competitors = _cx310Competitors;
    competitorsTableViewController.cs310competitors = _cs310Competitors;
    competitorsTableViewController.x925competitors = _x925Competitors;
    competitorsTableViewController.c925competitors = _c925Competitors;
    competitorsTableViewController.x950competitors = _x950Competitors;
    competitorsTableViewController.x954competitors = _x954Competitors;
    competitorsTableViewController.c950competitors = _c950Competitors;
    
    NSArray *nameLabels = [[NSArray alloc]
                       initWithObjects:@"Product Sales Videos",
                       @"Instruction Videos",
                       @"Resource Links",
                       nil];
    
    NSArray *descLabels = [[NSArray alloc]
                       initWithObjects:@"Features & Functions of Devices Explained",
                       @"Tools To Help Sell Products & Solutions",
                       @"Links To Commonly Used Web Data",
                       nil];
    
    NSArray *imageViews = [[NSArray alloc]
                       initWithObjects:@"Video.png",
                       @"Video.png",
                       @"Links.png",
                       nil];
    
    navigationController = [tabBarController viewControllers][2];
    SupportTableViewController *supportTableViewController = [navigationController viewControllers][0];
    supportTableViewController.nameLabels = nameLabels;
    supportTableViewController.descLabels = descLabels;
    supportTableViewController.imageViews = imageViews;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
