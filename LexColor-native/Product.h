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

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *desc;
@property (nonatomic, strong) NSString *image;
@property (nonatomic, strong) NSString *descDetails;
@property (nonatomic, strong) NSString *productSpecs;
@property (nonatomic, strong) NSString *productMatrix;
@property (nonatomic, strong) NSString *taaInfo;
@property (nonatomic, strong) NSString *sendProductSpecs;
@property (nonatomic, strong) NSString *navTitle;
@property (nonatomic, strong) NSString *headerTitle;
@property (nonatomic, strong) NSString *brochureLink;
@property (nonatomic, strong) NSString *shortName;
@property (nonatomic) enum ProductType productType;

@property (nonatomic) Boolean hasSuppliesMatrix;
@property (nonatomic) Boolean hasProductMatrix;
@property (nonatomic) Boolean hasMachineOption;

@end
