//
//  CompetitorDetailsViewController.h
//  LexColor-native
//
//  Created by Ringo Bajenting on 6/5/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"

@interface CompetitorDetailsViewController : UIViewController

@property (nonatomic, strong) NSMutableArray *_competitorDetailItems;
@property (nonatomic, strong) Product *_product;

@end
