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

enum SupportType {
    enum_supporttype_vid,
    enum_supporttype_page
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
    // X792
    enum_competitortype_HP_CM4540,
    enum_competitortype_RC_MPC400,
    enum_competitortype_SH_MXC402SC,
    enum_competitortype_XR_8900X,
    // C792
    enum_competitortype_HP_CP4525N,
    enum_competitortype_KY_FSC5400DN,
    enum_competitortype_RC_SPC431DN,
    enum_competitortype_XR_870DN,
    // X746
    enum_competitortype_HP_MFPM575DN,
    enum_competitortype_KM_C25,
    // X748
    enum_competitortype_HP_MFPM575C,
    enum_competitortype_KM_C35,
    enum_competitortype_XR_8700S,
    // C746
    enum_competitortype_HP_M551N,
    enum_competitortype_KY_FSC5250DN,
    enum_competitortype_RC_SPC430DN,
    enum_competitortype_XR_8570N,
    enum_competitortype_XR_6010NN,
    // C748
    enum_competitortype_HP_CP4025N,
    enum_competitortype_KY_FSC5300DN,
    //enum_competitortype_RC_SPC430DN, // see C746
    //enum_competitortype_XR_8570N, // see C746
    // CX510
    enum_competitortype_CN_MF9280CDN,
    enum_competitortype_KM_C20X,
    enum_competitortype_XR_6605N,
    // CS510
    enum_competitortype_BR_HL4570CDW,
    enum_competitortype_HP_M451NW,
    enum_competitortype_RC_SPC320DN,
    enum_competitortype_XR_6600N,
    // CX410
    enum_competitortype_BR_MFC9970CDW,
    enum_competitortype_HP_MFPM475,
    enum_competitortype_XR_6505N,
    // CS410
    enum_competitortype_BR_HL4150CDN,
    //enum_competitortype_BR_HL4570CDW, // see CS510
    //enum_competitortype_HP_M451NW, // see CS510
    enum_competitortype_XR_6500N,
    // CX310
    enum_competitortype_BR_MFC9460CDN,
    enum_competitortype_HP_M276NW,
    enum_competitortype_SM_CLF4195FW,
    enum_competitortype_XR_6015NI,
    // CS310
    enum_competitortype_BR_HL3045CN,
    enum_competitortype_BR_HL3065CW,
    enum_competitortype_HP_M51NW,
    enum_competitortype_SM_CLP415NW,
    enum_competitortype_XR_6010N,
    // X925
    enum_competitortype_CN_C2030,
    enum_competitortype_KM_C280,
    enum_competitortype_RC_MPC3002,
    enum_competitortype_XR_7120T,
    // C925
    enum_competitortype_KM_7450II,
    enum_competitortype_OK_OKIC830DN,
    enum_competitortype_XR_7100N,
    // X950
    enum_competitortype_CN_C5051,
    enum_competitortype_KM_C554,
    enum_competitortype_RC_MPC5502,
    enum_competitortype_XR_7556,
    // X954
    //enum_competitortype_CN_C5051, // see X950
    //enum_competitortype_KM_C554, // see X950
    //enum_competitortype_RC_MPC5502, // see X950
    //enum_competitortype_XR_7556, // see X950
    // C950
    enum_competitortype_HP_CP6015DN,
    enum_competitortype_OK_OKIC9650DN,
    enum_competitortype_RC_SPC821DN,
    enum_competitortype_XR_7800DN
};

@interface Constants : NSObject

@end