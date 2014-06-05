//
//  Utils.h
//  LexColor-native
//
//  Created by Ringo Bajenting on 5/22/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//
#import "CustomRow.h"
@interface Utils : NSObject

+ (NSString *) getPrimaryFontStyle;
+ (UILabel *) getFormattedLabel;
+ (UITextView *) getFormattedTextView;
+ (UIButton *) getFormattedButton;
+ (UIColor *) getColorLexmarkViolet;
+ (UIColor *) getColorLexmarkDarkGray;
+ (UIColor *) getColorLexmarkWhite;
+ (UIColor *) getColorLexmarkMaroon;
+ (CustomRow *) getFormattedTableRow2Columns;
+ (void) resizeLabelHeight:(UILabel *) resizableLable;
+ (void) resizeRowHeight: (CustomRow *) row;
+ (CustomRow *) getFormattedTableRow3Columns;
+ (CustomRow *) getFormattedTableRow3ColumnsB;
+ (CustomRow *) getFormattedTableRow7Columns;

@end