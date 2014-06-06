//
//  ProductMatrixViewController.h
//  LexColor-native
//
//  Created by Ringo Bajenting on 6/6/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductMatrixViewController : UIViewController

@property (nonatomic, strong) NSMutableArray *_productMatrixItems;
@property (nonatomic, strong) NSString *_headerTitle;
@property (nonatomic) enum SupportType *_type;

@end
