//
//  Product.h
//  LexColor-native
//
//  Created by Ringo Bajenting on 5/21/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Constants.h"

@interface Product : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *desc;
@property (nonatomic, copy) NSString *image;
@property (nonatomic, copy) NSString *descDetails;
@property (nonatomic, copy) NSString *productSpecs;
@property (nonatomic, copy) NSString *productMatrix;
@property (nonatomic, copy) NSString *taaInfo;
@property (nonatomic, copy) NSString *sendProductSpecs;
@property (nonatomic, copy) NSString *navTitle;
@property (nonatomic, copy) NSString *headerTitle;
@property (nonatomic) enum ProductType productType;
@property (nonatomic) Boolean hasMachineOption;

@end
