//
//  Data.h
//  LexColor-native
//
//  Created by Ringo Bajenting on 5/26/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Constants.h"

@interface Data : NSObject

@property (nonatomic, copy) NSString *_key;
@property (nonatomic, copy) NSString *_stringValue;
@property (nonatomic) enum InfoType _type;
@property (nonatomic, copy) NSMutableArray *_rowValue;

@end