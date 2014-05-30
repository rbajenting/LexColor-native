//
//  DataFactory.h
//  LexColor-native
//
//  Created by Ringo Bajenting on 5/27/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Constants.h"

@interface DataFactory : NSObject

+ (NSMutableArray *) getProductSpecItems:(enum ProductType) productType;
+ (NSMutableArray *) getSuppliesMatrixItems:(enum ProductType) productType;
+ (NSMutableArray *) getMachineOptionsItems:(enum ProductType) productType;
+ (NSMutableArray *) getTaaInformationItems:(enum ProductType) productType;

@end
