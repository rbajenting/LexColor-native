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

@implementation AppDelegate
{
    NSMutableArray *_series79x;
    NSMutableArray *_series74x;
    NSMutableArray *_series51x;
    NSMutableArray *_series41x;
    NSMutableArray *_series31x;
    NSMutableArray *_series92x;
    NSMutableArray *_series95x;
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
    product.hasMachineOption = YES;
    [_series79x addObject:product];
    
    product = [[Product alloc] init];
    product.name = @"C792 Range of Products";
    product.desc = @"Touch Screen Color Printer";
    [_series79x addObject:product];
    
    product = [[Product alloc] init];
    product.name = @"X746 Range of Products";
    product.desc = @"Touch Screen Multifunction Device";
    [_series74x addObject:product];
    
    product = [[Product alloc] init];
    product.name = @"X748 Range of Products";
    product.desc = @"Touch Screen Multifunction Device";
    [_series74x addObject:product];
    
    product = [[Product alloc] init];
    product.name = @"C746 Range of Products";
    product.desc = @"Color Printer";
    [_series74x addObject:product];
    
    product = [[Product alloc] init];
    product.name = @"C748 Range of Products";
    product.desc = @"Touch Screen Color Printer";
    [_series74x addObject:product];
    
    product = [[Product alloc] init];
    product.name = @"CX510 Range of Products";
    product.desc = @"Touch Screen Multifunction Device";
    [_series51x addObject:product];
    
    product = [[Product alloc] init];
    product.name = @"CS510 Range of Products";
    product.desc = @"Touch Screen Color Printer";
    [_series51x addObject:product];
    
    product = [[Product alloc] init];
    product.name = @"CX410 Range of Products";
    product.desc = @"Touch Screen Multifunction Device";
    [_series41x addObject:product];
    
    product = [[Product alloc] init];
    product.name = @"CS410 Range of Products";
    product.desc = @"Touch Screen Color Printer";
    [_series41x addObject:product];
    
    product = [[Product alloc] init];
    product.name = @"CX310 Range of Products";
    product.desc = @"Touch Screen Multifunction Device";
    [_series31x addObject:product];
    
    product = [[Product alloc] init];
    product.name = @"CS310 Range of Products";
    product.desc = @"Touch Screen Color Printer";
    [_series31x addObject:product];
    
    product = [[Product alloc] init];
    product.name = @"X925 Range of Products";
    product.desc = @"Touch Screen Multifunction Device";
    [_series92x addObject:product];
    
    product = [[Product alloc] init];
    product.name = @"C925 Range of Products";
    product.desc = @"Touch Screen Color Printer";
    [_series92x addObject:product];
    
    product = [[Product alloc] init];
    product.name = @"X950 Range of Products";
    product.desc = @"Touch Screen Multifunction Device";
    [_series95x addObject:product];
    
    product = [[Product alloc] init];
    product.name = @"X954 Range of Products";
    product.desc = @"Touch Screen Multifunction Device";
    [_series95x addObject:product];
    
    product = [[Product alloc] init];
    product.name = @"C950 Range of Products";
    product.desc = @"Touch Screen Color Printer";
    [_series92x addObject:product];
    
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
