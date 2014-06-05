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

@property (nonatomic, strong) NSString *_key;
@property (nonatomic, strong) NSString *_stringValue;
@property (nonatomic) enum InfoType _type;
@property (nonatomic, strong) NSMutableArray *_rowValue;

@end