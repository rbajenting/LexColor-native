//
//  Utils.m
//  LexColor-native
//
//  Created by Ringo Bajenting on 5/22/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import "Utils.h"
#import "Data.h"

static NSString *primaryFontStyle = @"Futura-Medium";

@implementation Utils

+ (NSString *) getPrimaryFontStyle
{
    return primaryFontStyle;
}

+ (UIColor *) getColorLexmarkViolet {
    return [UIColor colorWithRed:82/255.0 green:44/255.0 blue:126/255.0 alpha:1.0];
}

+ (UIColor *) getColorLexmarkDarkGray {
    return [UIColor colorWithRed:65/255.0 green:64/255.0 blue:66/255.0 alpha:1.0];
}

+ (UIColor *) getColorLexmarkWhite {
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1.0];
}

+ (UIColor *) getColorLexmarkMaroon {
    return [UIColor colorWithRed:128/255.0 green:27/255.0 blue:39/255.0 alpha:1.0];
}

+ (UILabel *) getFormattedLabel
{
    // label
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 24)];
    label.textColor = Utils.getColorLexmarkWhite;
    label.textAlignment = NSTextAlignmentLeft;
    //label.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"headerbackground.png"]];
    label.backgroundColor = self.getColorLexmarkMaroon;
    label.font = [UIFont fontWithName:self.getPrimaryFontStyle size:16];
    
    return label;
}

+ (UITextView *) getFormattedTextView
{
    UITextView *textView = [[UITextView alloc] init];
    textView.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:12];
    textView.textColor = Utils.getColorLexmarkDarkGray;
    textView.textAlignment = UIControlContentHorizontalAlignmentFill;
    textView.editable = NO;
    
    return textView;
}

+ (UIButton *) getFormattedButton
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 300, 30);
    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    //UIColor *fontColor = getColorLexmarkViolet;
    [button setBackgroundColor:self.getColorLexmarkViolet];
    button.layer.cornerRadius = 10;
    
    return button;
}

+ (CustomRow *) getFormattedTableRow2Columns
{

    CustomRow *row = [[CustomRow alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
    row._column1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, row.frame.size.width/3, 48)];
    CGRect frame = row._column1.frame;
    frame.origin.x = (row.frame.size.width/2) - (row._column1.frame.size.width);
    frame.origin.y = 0;
    row._column1.frame = frame;
    row._column1.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:10];
    row._column1.textColor = Utils.getColorLexmarkDarkGray;
    row._column1.textAlignment = NSTextAlignmentCenter;
    row._column1.layer.borderColor = [UIColor grayColor].CGColor;
    row._column1.layer.borderWidth = 1.0;
    //row._column1.adjustsFontSizeToFitWidth = YES;
    row._column1.numberOfLines = 100;
    //row._column1.minimumFontSize = 0;
    [row addSubview:row._column1];
    
    row._column2 = [[UILabel alloc] initWithFrame:CGRectMake((row.frame.size.width/2) - 1, 0, row.frame.size.width/3, 48)];
    row._column2.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:10];
    row._column2.textColor = Utils.getColorLexmarkDarkGray;
    row._column2.textAlignment = NSTextAlignmentCenter;
    row._column2.layer.borderColor = [UIColor grayColor].CGColor;
    row._column2.layer.borderWidth = 1.0;
    //row._column2.adjustsFontSizeToFitWidth = YES;
    row._column2.numberOfLines = 100;
    //row._column2.minimumFontSize = 0;
    [row addSubview:row._column2];
    row._height = row.frame.size.height;
    
    row._column3 = [UILabel alloc];
    row._column4 = [UILabel alloc];
    row._column5 = [UILabel alloc];
    row._column6 = [UILabel alloc];
    row._column7 = [UILabel alloc];
    
    return row;
}

+ (CustomRow *) getFormattedTableRow3Columns
{
    
    CustomRow *row = [[CustomRow alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
    row._column1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, row.frame.size.width/5, 48)];
    CGRect frame = row._column1.frame;
    frame.origin.x = (row.frame.size.width * 0.25) - (row._column1.frame.size.width);
    frame.origin.y = 0;
    row._column1.frame = frame;
    row._column1.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:10];
    row._column1.textColor = Utils.getColorLexmarkDarkGray;
    row._column1.textAlignment = NSTextAlignmentCenter;
    row._column1.layer.borderColor = [UIColor grayColor].CGColor;
    row._column1.layer.borderWidth = 1.0;
    //row._column1.adjustsFontSizeToFitWidth = YES;
    row._column1.numberOfLines = 100;
    //row._column1.minimumFontSize = 0;
    [row addSubview:row._column1];
    
    row._column2 = [[UILabel alloc] initWithFrame:CGRectMake((row.frame.size.width * 0.25) - 1, 0, row.frame.size.width/2, 48)];
    row._column2.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:10];
    row._column2.textColor = Utils.getColorLexmarkDarkGray;
    row._column2.textAlignment = NSTextAlignmentCenter;
    row._column2.layer.borderColor = [UIColor grayColor].CGColor;
    row._column2.layer.borderWidth = 1.0;
    //row._column2.adjustsFontSizeToFitWidth = YES;
    row._column2.numberOfLines = 100;
    //row._column2.minimumFontSize = 0;
    [row addSubview:row._column2];
    
    row._column3 = [[UILabel alloc] initWithFrame:CGRectMake((row.frame.size.width * 0.75) - 2, 0, row.frame.size.width/5, 48)];
    row._column3.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:10];
    row._column3.textColor = Utils.getColorLexmarkDarkGray;
    row._column3.textAlignment = NSTextAlignmentCenter;
    row._column3.layer.borderColor = [UIColor grayColor].CGColor;
    row._column3.layer.borderWidth = 1.0;
    //row._column3.adjustsFontSizeToFitWidth = YES;
    row._column3.numberOfLines = 100;
    //row._column3.minimumFontSize = 0;
    [row addSubview:row._column3];
    
    row._column4 = [UILabel alloc];
    row._column5 = [UILabel alloc];
    row._column6 = [UILabel alloc];
    row._column7 = [UILabel alloc];
    
    row._height = row.frame.size.height;
    
    return row;
}

+ (CustomRow *) getFormattedTableRow3ColumnsB
{
    
    CustomRow *row = [[CustomRow alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
    row._column1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, row.frame.size.width/2, 48)];
    CGRect frame = row._column1.frame;
    frame.origin.x = (row.frame.size.width * 0.55) - (row._column1.frame.size.width);
    frame.origin.y = 0;
    row._column1.frame = frame;
    row._column1.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:10];
    row._column1.textColor = Utils.getColorLexmarkDarkGray;
    row._column1.textAlignment = NSTextAlignmentCenter;
    row._column1.layer.borderColor = [UIColor grayColor].CGColor;
    row._column1.layer.borderWidth = 1.0;
    //row._column1.adjustsFontSizeToFitWidth = YES;
    row._column1.numberOfLines = 100;
    //row._column1.minimumFontSize = 0;
    [row addSubview:row._column1];
    
    row._column2 = [[UILabel alloc] initWithFrame:CGRectMake((row.frame.size.width * 0.55) - 1, 0, row.frame.size.width/5, 48)];
    row._column2.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:10];
    row._column2.textColor = Utils.getColorLexmarkDarkGray;
    row._column2.textAlignment = NSTextAlignmentCenter;
    row._column2.layer.borderColor = [UIColor grayColor].CGColor;
    row._column2.layer.borderWidth = 1.0;
    //row._column2.adjustsFontSizeToFitWidth = YES;
    row._column2.numberOfLines = 100;
    //row._column2.minimumFontSize = 0;
    [row addSubview:row._column2];
    
    row._column3 = [[UILabel alloc] initWithFrame:CGRectMake((row.frame.size.width * 0.75) - 2, 0, row.frame.size.width/5, 48)];
    row._column3.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:10];
    row._column3.textColor = Utils.getColorLexmarkDarkGray;
    row._column3.textAlignment = NSTextAlignmentCenter;
    row._column3.layer.borderColor = [UIColor grayColor].CGColor;
    row._column3.layer.borderWidth = 1.0;
    //row._column3.adjustsFontSizeToFitWidth = YES;
    row._column3.numberOfLines = 100;
    //row._column3.minimumFontSize = 0;
    [row addSubview:row._column3];
    
    row._column4 = [UILabel alloc];
    row._column5 = [UILabel alloc];
    row._column6 = [UILabel alloc];
    row._column7 = [UILabel alloc];
    
    row._height = row.frame.size.height;
    
    return row;
}

+ (CustomRow *) getFormattedTableRow7Columns
{
    
    CustomRow *row = [[CustomRow alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
    row._column1 = [[UILabel alloc] initWithFrame:CGRectMake(3, 0, row.frame.size.width/8, 48)];
    CGRect frame = row._column1.frame;
    //frame.origin.x = (row.frame.size.width * 1/8) - (row._column1.frame.size.width);
    frame.origin.y = 0;
    row._column1.frame = frame;
    row._column1.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:9];
    row._column1.textColor = Utils.getColorLexmarkDarkGray;
    row._column1.textAlignment = NSTextAlignmentCenter;
    row._column1.layer.borderColor = [UIColor grayColor].CGColor;
    row._column1.layer.borderWidth = 1.0;
    //row._column1.adjustsFontSizeToFitWidth = YES;
    row._column1.numberOfLines = 100;
    //row._column1.minimumFontSize = 0;
    [row addSubview:row._column1];
    
    row._column2 = [[UILabel alloc] initWithFrame:CGRectMake((row.frame.size.width * 1/8) + 2, 0, row.frame.size.width/8, 48)];
    row._column2.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:9];
    row._column2.textColor = Utils.getColorLexmarkDarkGray;
    row._column2.textAlignment = NSTextAlignmentCenter;
    row._column2.layer.borderColor = [UIColor grayColor].CGColor;
    row._column2.layer.borderWidth = 1.0;
    //row._column2.adjustsFontSizeToFitWidth = YES;
    row._column2.numberOfLines = 100;
    //row._column2.minimumFontSize = 0;
    [row addSubview:row._column2];
    
    row._column3 = [[UILabel alloc] initWithFrame:CGRectMake((row.frame.size.width * 2/8) + 1, 0, row.frame.size.width/8, 48)];
    row._column3.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:9];
    row._column3.textColor = Utils.getColorLexmarkDarkGray;
    row._column3.textAlignment = NSTextAlignmentCenter;
    row._column3.layer.borderColor = [UIColor grayColor].CGColor;
    row._column3.layer.borderWidth = 1.0;
    //row._column3.adjustsFontSizeToFitWidth = YES;
    row._column3.numberOfLines = 100;
    //row._column3.minimumFontSize = 0;
    [row addSubview:row._column3];
    
    row._column4 = [[UILabel alloc] initWithFrame:CGRectMake((row.frame.size.width * 3/8), 0, row.frame.size.width/4, 48)];
    row._column4.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:9];
    row._column4.textColor = Utils.getColorLexmarkDarkGray;
    row._column4.textAlignment = NSTextAlignmentCenter;
    row._column4.layer.borderColor = [UIColor grayColor].CGColor;
    row._column4.layer.borderWidth = 1.0;
    //row._column4.adjustsFontSizeToFitWidth = YES;
    row._column4.numberOfLines = 100;
    //row._column4.minimumFontSize = 0;
    [row addSubview:row._column4];
    
    row._column5 = [[UILabel alloc] initWithFrame:CGRectMake((row.frame.size.width * 5/8) - 1, 0, row.frame.size.width/8, 48)];
    row._column5.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:9];
    //row._column5.textColor = Utils.getColorLexmarkDarkGray;
    row._column5.textColor = [UIColor blueColor];
    row._column5.textAlignment = NSTextAlignmentCenter;
    row._column5.layer.borderColor = [UIColor grayColor].CGColor;
    row._column5.layer.borderWidth = 1.0;
    //row._column5.adjustsFontSizeToFitWidth = YES;
    row._column5.numberOfLines = 100;
    //row._column5.minimumFontSize = 0;
    [row addSubview:row._column5];
    
    row._column6 = [[UILabel alloc] initWithFrame:CGRectMake((row.frame.size.width * 6/8) - 2, 0, row.frame.size.width/10, 48)];
    row._column6.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:9];
    row._column6.textColor = Utils.getColorLexmarkDarkGray;
    row._column6.textAlignment = NSTextAlignmentCenter;
    row._column6.layer.borderColor = [UIColor grayColor].CGColor;
    row._column6.layer.borderWidth = 1.0;
    //row._column6.adjustsFontSizeToFitWidth = YES;
    row._column6.numberOfLines = 100;
    //row._column6.minimumFontSize = 0;
    [row addSubview:row._column6];
    
    row._column7 = [[UILabel alloc] initWithFrame:CGRectMake((row.frame.size.width * 6.75/8) - 1, 0, row.frame.size.width/7, 48)];
    row._column7.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:9];
    //row._column7.textColor = Utils.getColorLexmarkDarkGray;
    row._column7.textColor = [UIColor blueColor];
    row._column7.textAlignment = NSTextAlignmentCenter;
    row._column7.layer.borderColor = [UIColor grayColor].CGColor;
    row._column7.layer.borderWidth = 1.0;
    //row._column7.adjustsFontSizeToFitWidth = YES;
    row._column7.numberOfLines = 100;
    //row._column7.minimumFontSize = 0;
    [row addSubview:row._column7];
    
    row._height = row.frame.size.height;
    
    return row;
}

+ (void) resizeRowHeight: (CustomRow *) row
{
    double temp = row._height;
    if(row._column1.frame.size.height > row._height) {
        row._height = row._column1.frame.size.height;
    }
    
    if(row._column2.frame.size.height > row._height) {
        row._height = row._column2.frame.size.height;
    }
    
    
    if(row._column3.frame.size.height > row._height) {
        row._height = row._column3.frame.size.height;
    }
    
    if(row._column4.frame.size.height > row._height) {
        row._height = row._column4.frame.size.height;
    }
    
    if(row._column5.frame.size.height > row._height) {
        row._height = row._column5.frame.size.height;
    }
    
    if(row._column6.frame.size.height > row._height) {
        row._height = row._column6.frame.size.height;
    }
    
    if(row._column7.frame.size.height > row._height) {
        row._height = row._column7.frame.size.height;
    }
    
    CGRect newFrame = row._column1.frame;
    newFrame.size.height = row._height;
    row._column1.frame = newFrame;
        
    newFrame = row._column2.frame;
    newFrame.size.height = row._height;
    row._column2.frame = newFrame;
        
    newFrame = row._column3.frame;
    newFrame.size.height = row._height;
    row._column3.frame = newFrame;
    
    newFrame = row._column4.frame;
    newFrame.size.height = row._height;
    row._column4.frame = newFrame;
    
    newFrame = row._column5.frame;
    newFrame.size.height = row._height;
    row._column5.frame = newFrame;
    
    newFrame = row._column6.frame;
    newFrame.size.height = row._height;
    row._column6.frame = newFrame;
    
    newFrame = row._column7.frame;
    newFrame.size.height = row._height;
    row._column7.frame = newFrame;
    
    newFrame = row.frame;
    if (temp < row._height) {
        newFrame.size.height = row._height + 1;
    } else {
        newFrame.size.height = row._height;
    }
    
    row.frame = newFrame;
    
}

+ (void) resizeLabelHeight:(UILabel *) resizableLable
{
    CGSize constrainedSize = CGSizeMake(resizableLable.frame.size.width  , 9999);
    
    NSDictionary *attributesDictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                          [UIFont fontWithName:Utils.getPrimaryFontStyle size:12.0], NSFontAttributeName,
                                          nil];
    
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:resizableLable.text attributes:attributesDictionary];
    
    CGRect requiredHeight = [string boundingRectWithSize:constrainedSize options:NSStringDrawingUsesLineFragmentOrigin context:nil];
    
    if (requiredHeight.size.width > resizableLable.frame.size.width) {
        requiredHeight = CGRectMake(0,0, resizableLable.frame.size.width, requiredHeight.size.height);
    }
    CGRect newFrame = resizableLable.frame;
    newFrame.size.height = requiredHeight.size.height;
    resizableLable.frame = newFrame;
}

@end
