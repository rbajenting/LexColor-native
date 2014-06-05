//
//  Constants.h
//  LexColor-native
//
//  Created by Ringo Bajenting on 5/27/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import <Foundation/Foundation.h>

enum InfoType {
    enum_infotype_text,
    enum_infotype_image,
    enum_infotype_table2columns,
    enum_infotype_table3columns
};

enum ProductType {
    enum_producttype_X792,
    enum_producttype_C792,
    enum_producttype_X746,
    enum_producttype_X748,
    enum_producttype_C746,
    enum_producttype_C748,
    enum_producttype_CX510,
    enum_producttype_CS510,
    enum_producttype_CX410,
    enum_producttype_CS410,
    enum_producttype_CX310,
    enum_producttype_CS310,
    enum_producttype_X950,
    enum_producttype_X954,
    enum_producttype_C950,
    enum_competitortype_X792_HP_CM4540,
    enum_competitortype_X792_RC_MPC400,
    enum_competitortype_X792_SH_MXC402SC,
    enum_competitortype_X792_XR_8900X
};

@interface Constants : NSObject

@end