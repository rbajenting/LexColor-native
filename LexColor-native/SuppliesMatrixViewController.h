//
//  SuppliesMatrixViewController.h
//  LexColor-native
//
//  Created by Ringo Bajenting on 5/29/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constants.h"

@interface SuppliesMatrixViewController : UIViewController

@property (nonatomic, strong) NSMutableArray *_suppliesMatrixItems;
@property (nonatomic, strong) NSString *_headerTitle;
@property (nonatomic) enum SupportType *_type;

@end
