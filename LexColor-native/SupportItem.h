//
//  SupportItem.h
//  LexColor-native
//
//  Created by Ringo Bajenting on 6/5/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Constants.h"

@interface SupportItem : NSObject
@property (nonatomic, strong) NSString *_key;
@property (nonatomic, strong) NSString *_stringValue;
@property (nonatomic, strong) NSString *_link;
@property (nonatomic) enum SupportType _type;
@end
