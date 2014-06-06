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
+ (NSMutableArray *) getProductMatrixItems:(enum ProductType) productType;
+ (NSMutableArray *) getMachineOptionsItems:(enum ProductType) productType;
+ (NSMutableArray *) getTaaOrderingMatrixItems:(enum ProductType) productType;
+ (NSMutableArray *) getTaaSuppliesMatrixItems:(enum ProductType) productType;
+ (NSMutableArray *) getCompetitorSpecItems:(enum ProductType) productType;
+ (NSMutableArray *) getSupportItems:(NSIndexPath *) indexPath;

@end
