//
//  RowContainer.h
//  LexColor-native
//
//  Created by Ringo Bajenting on 5/27/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RowContainer : NSObject

@property (nonatomic, copy) NSString *_column1;
@property (nonatomic, copy) NSString *_column2;
@property (nonatomic, copy) NSString *_column3;
@property (nonatomic, copy) NSString *_column4;
@property (nonatomic, copy) NSString *_column5;
@property (nonatomic, copy) NSString *_column6;
@property (nonatomic, copy) NSString *_column7;

@property (nonatomic) Boolean _isHeader;

@end
