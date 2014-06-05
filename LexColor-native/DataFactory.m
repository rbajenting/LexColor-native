//
//  DataFactory.m
//  LexColor-native
//
//  Created by Ringo Bajenting on 5/27/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import "Data.h"
#import "DataFactory.h"
#import "RowContainer.h"

@implementation DataFactory

+ (NSMutableArray *) getProductSpecItems:(enum ProductType) productType
{
    NSMutableArray *productSpecsItems = [NSMutableArray array];
    Data *item;
    
    switch (productType) {
        case enum_producttype_X792: {
            NSLog(@"X792 selected");
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Print Speed (Letter, Black):";
            item._stringValue= @"50 ppm";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Print Speed (Letter, Color):";
            item._stringValue= @"50 ppm";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Time to First Page (Black):";
            item._stringValue= @"As fast as 8 seconds";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Time to First Page (Color):";
            item._stringValue= @"As fast as 8.5 seconds";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Print Resolution, Black:";
            item._stringValue= @"1200 x 1200 dpi, 4800 Color Quality (2400 x 600 dpi)";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Print Resolution, Color:";
            item._stringValue= @"1200 x 1200 dpi, 4800 Color Quality (2400 x 600 dpi)";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Memory, Standard:";
            item._stringValue= @"1024 MB";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Memory, Maximum:";
            item._stringValue= @"2048 MB";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Hard Disk:";
            item._stringValue= @"Included in configuration";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Print Noise Level, Operating:";
            item._stringValue= @"52 dBA";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Print Noise Level, Idle:";
            item._stringValue= @"27 dBA";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Maximum Monthly Duty Cycle:";
            item._stringValue= @"150,000";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Recommended Monthly Page Volume:";
            item._stringValue= @"2,500 - 17 pages";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Supplies Yield:";
            item._stringValue= @"6,000*-page (CMYK) Print Cartridges, 20,000*-page (CMYK Extra High Yield Print Cartridges";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Copy Speed (Letter, Black):";
            item._stringValue= @"50 cpm";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Copy Speed (Letter, Color):";
            item._stringValue= @"50 cpm";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Print Speed (Letter, Black):";
            item._stringValue= @"50 ppm";
            [productSpecsItems addObject:item];
            ;
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Scanning Resolution:";
            item._stringValue= @"600 x 600 dpi";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Reduce / Enlarge Range:";
            item._stringValue= @"25 - 400 %";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Modem Speed:";
            item._stringValue= @"33.6 Kbps";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Paper Handling Standard:";
            item._stringValue= @"500-Sheet Output Bin, Integrated Duplex, 100-Sheet Multipurpose Feeder, 550-Sheet Input Tray";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Paper Handling Optional:";
            item._stringValue= @"5-Bin Mailbox, 550-Sheet Drawer, 2,000-Sheet High-Capacity Feeder, 500-Sheet Offset Stacker, 500-Sheet Staple Finisher, 500-Sheet Staple Punch Finisher";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Paper Input Capacity, Standard:";
            item._stringValue= @"650 pages 20 lb or 75 gsm bond";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key= @" • Paper Input Capacity, Maximum:";
            item._stringValue = @"2650 pages 20 lb or 75 gsm bond";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • ADF Paper Input Capacity:";
            item._stringValue= @"75 pages 20 lb or 75 gsm bond";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Media Type Supported:";
            item._stringValue= @"Card Stock, Dual Web Labels, Envelopes, Glossy Paper, Integrated Labels, Paper Labels, Plain Paper, Polyyester Labels, Transparencies, Vinyl Labels, Refer to the Card Stock and Label Guide, Outdoor Media, Banner Paper";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Function:";
            item._stringValue= @"Color Copying, Color Faxing, Color Printing, Color Scanning, Color Network Scanning";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Product Warranty:";
            item._stringValue= @"1-Year Onsite Service, Next Business Day";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Size (in. - Hx W x D):";
            item._stringValue= @"32.5 x 22.0 x 20.0 in.";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Weight (lbs):";
            item._stringValue= @"161 lb.";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Specified Operating Environment:";
            item._stringValue= @"Temperature: 16 to 32°C (60 to 90°F), Humidity: 8 to 80% Relative Humidity, Altitude: 0 - 3048 Meters (10,000 Feet)";
            [productSpecsItems addObject:item];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Caster Base:";
            item._stringValue= @"Optional, (Required for floor standing configuration)";
            [productSpecsItems addObject:item];
            
            NSMutableArray *tableSet = [NSMutableArray array];
            
            RowContainer *row = [RowContainer alloc];
            row._column1 = @"CPP - Mono (5% Cov)";
            row._column2 = @"CPP - CMYK (20% tot cov)";
            row._isHeader = YES;
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"$0.0154";
            row._column2 = @"$0.0757";
            [tableSet addObject:row];
            
            item = [Data alloc];
            item._type = enum_infotype_table2columns;
            item._key = @" • Cost Per Page:";
            item._rowValue = tableSet;
            
            [productSpecsItems addObject:item];
            break;
        }
    
        default: {
            break;
        }
    }
    
    return productSpecsItems;
}

+ (NSMutableArray *) getSuppliesMatrixItems:(enum ProductType) productType
{
    NSMutableArray *suppliesMatrixItems = [NSMutableArray array];
    Data *item;
    
    switch (productType) {
        case enum_producttype_X792: {
            NSLog(@"X792 selected");
            
            NSMutableArray *tableSet = [NSMutableArray array];
            
            RowContainer *row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"Lexmark X792 Supplies";
            row._column3 = @"";
            row._isHeader = YES;
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"C792A1CG";
            row._column2 = @"C792, X792 Cyan Return Program Print Cartridge";
            row._column3 = @" $291.99 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"C792A1MG";
            row._column2 = @"C792, X792 Magenta Return Program Print Cartridge";
            row._column3 = @" $291.99 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"C792A1YG";
            row._column2 = @"C792, X792 Yellow Return Program Print Cartridge";
            row._column3 = @" $291.99 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"C792A1KG";
            row._column2 = @"C792, X792 Black Return Program Print Cartridge";
            row._column3 = @" $192.99 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"C792X1CG";
            row._column2 = @"C792 Cyan Extra High Yield Return Program Print Cartridge";
            row._column3 = @" $525.99 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"C792X1MG";
            row._column2 = @"C792 Magenta Extra High Yield Return Program Print Cartridge";
            row._column3 = @" $525.99 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"C792X1YG";
            row._column2 = @"C792 Yellow Extra High Yield Return Program Print Cartridge";
            row._column3 = @" $525.99 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"C792X1KG";
            row._column2 = @"C792 Black Extra High Yield Return Program Print Cartridge";
            row._column3 = @" $303.99 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"C792X2CG";
            row._column2 = @"C792 Cyan Extra High Yield Print Cartridge";
            row._column3 = @" $604.99 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"C792X2MG";
            row._column2 = @"C792 Magenta Extra High Yield Print Cartridge";
            row._column3 = @" $604.99 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"C792X2YG";
            row._column2 = @"C792 Yellow Extra High Yield Print Cartridge";
            row._column3 = @" $604.99 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"C792X2KG";
            row._column2 = @"C792 Black Extra High Yield Print Cartridge";
            row._column3 = @" $380.99 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"C792X77G";
            row._column2 = @"C792, X792 Waste Toner Bottle";
            row._column3 = @" $14.99 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"25A0013";
            row._column2 = @"Staple 3-pack (5,000 per pack) (W840 / X85Xe)";
            row._column3 = @" $104.99 ";
            [tableSet addObject:row];
            
            item = [Data alloc];
            item._type = enum_infotype_table2columns;
            item._key = @" • Supplies Matrix:";
            item._rowValue = tableSet;
            
            [suppliesMatrixItems addObject:item];
            break;
        }
            
        default: {
            break;
        }
    }
    
    return suppliesMatrixItems;
}

+ (NSMutableArray *) getMachineOptionsItems:(enum ProductType) productType
{
    NSMutableArray *machineOptionsItems = [NSMutableArray array];
    Data *item;
    
    switch (productType) {
        case enum_producttype_X792: {
            NSLog(@"X792 selected");
            
            NSMutableArray *tableSet = [NSMutableArray array];
            
            RowContainer *row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"Lexmark X792 Options and Supplies";
            row._column3 = @"";
            row._isHeader = YES;
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"47B1001";
            row._column2 = @"Lexmark X792dte Color Laser MFP - pallet quantity 1";
            row._column3 = @" $4,899.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"Print, copy, scan and fax; 10.2-inch LCD touch panel; Duplex printing standard; Up to 50 ppm black or color; 1.2GHz Processor; 1GB RAM; 160GB hard drive; 1200 x 1200 dpi; 1,650-sheet input from three drawers and 100-sheet multipurpose feeder; 500-sheet output bin; Legal-size flatbed scanner with 75-sheet automatic document feeder; Single-pass duplex scanning; Caster base; Time to first page as fast as 8 seconds for black or 9 seconds for color; USB and Gigabit Ethernet; Front USB direct print port; PostScript 3 and PCL 6 emulations, XPS and PPDS Migration Tool; 2,500 to 17,000 pages per month recommend monthly usage, 150,000 pages maximum monthly duty cycle; 1-year onsite warranty; Ships with 12,000-page black and color cartridges";
            row._column3 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"47B1002";
            row._column2 = @"Lexmark X792dtfe Color Laser MFP - pallet quantity 1";
            row._column3 = @" $5,549.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"Print, copy, scan and fax; 10.2-inch LCD touch panel; Duplex printing standard; Up to 50 ppm black or color; 1.2GHz Processor; 1GB RAM; 160GB hard drive; 1200 x 1200 dpi; 1,650-sheet input from three drawers and 100-sheet multipurpose feeder; 500-sheet output bin and 500 sheets in finisher;  Legal-size flatbed scanner with 75-sheet automatic document feeder; Single-pass duplex scanning; Caster base; Staple finisher; Time to first page as fast as 8 seconds for black or 9 seconds for color; USB and Gigabit Ethernet; Front USB direct print port; PostScript 3 and PCL 6 emulations, XPS and PPDS Migration Tool; 2,500 to 17,000 pages per month recommend monthly usage, 150,000 pages maximum monthly duty cycle; 1-year onsite warranty; Ships with 12,000-page black and color cartridges";
            row._column3 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"47B1120";
            row._column2 = @"Lexmark X792dtpe Color Laser MFP - pallet quantity 1";
            row._column3 = @" $5,899.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"Print, copy, scan and fax; 10.2-inch LCD touch panel; Duplex printing standard; Up to 50 ppm black or color; 1.2GHz Processor; 1GB RAM; 160GB hard drive; 1200 x 1200 dpi; 1,650-sheet input from three drawers and 100-sheet multipurpose feeder; 500-sheet output bin and 500 sheets in finisher;  Legal-size flatbed scanner with 75-sheet automatic document feeder; Single-pass duplex scanning; Caster base; Staple finisher with hole punch; Time to first page as fast as 8 seconds for black or 9 seconds for color; USB and Gigabit Ethernet; Front USB direct print port; PostScript 3 and PCL 6 emulations, XPS and PPDS Migration Tool; 2,500 to 17,000 pages per month recommend monthly usage, 150,000 pages maximum monthly duty cycle; 1-year onsite warranty; Ships with 12,000-page black and color cartridges";
            row._column3 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"47B1121";
            row._column2 = @"Lexmark X792dtme Color Laser MFP - pallet quantity 1";
            row._column3 = @" $5,549.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"Print, copy, scan and fax; 10.2-inch LCD touch panel; Duplex printing standard; Up to 50 ppm black or color; 1.2GHz Processor; 1GB RAM; 160GB hard drive; 1200 x 1200 dpi; 1,650-sheet input from three drawers and 100-sheet multipurpose feeder; 500-sheet output bin and 500 sheets in 5-bin mailbox;  Legal-size flatbed scanner with 75-sheet automatic document feeder; Single-pass duplex scanning; Caster base; 5-bin mailbox; Time to first page as fast as 8 seconds for black or 9 seconds for color; USB and Gigabit Ethernet; Front USB direct print port; PostScript 3 and PCL 6 emulations, XPS and PPDS Migration Tool; 2,500 to 17,000 pages per month recommend monthly usage, 150,000 pages maximum monthly duty cycle; 1-year onsite warranty; Ships with 12,000-page black and color cartridges";
            row._column3 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"47B1122";
            row._column2 = @"Lexmark X792dtse Color Laser MFP - pallet quantity 1";
            row._column3 = @" $5,399.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"Print, copy, scan and fax; 10.2-inch LCD touch panel; Duplex printing standard; Up to 50 ppm black or color; 1.2GHz Processor; 1GB RAM; 160GB hard drive; 1200 x 1200 dpi; 1,650-sheet input from three drawers and 100-sheet multipurpose feeder; 500-sheet output bin and 500 sheets in stacker; Legal-size flatbed scanner with 75-sheet automatic document feeder; Single-pass duplex scanning; Caster base; 5-bin mailbox; Time to first page as fast as 8 seconds for black or 9 seconds for color; USB and Gigabit Ethernet; Front USB direct print port; PostScript 3 and PCL 6 emulations, XPS and PPDS Migration Tool; 2,500 to 17,000 pages per month recommend monthly usage, 150,000 pages maximum monthly duty cycle; 1-year onsite warranty; Ships with 12,000-page black and color cartridges";
            row._column3 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"Lexmark X792 Paper Handling Options";
            row._column3 = @"";
            row._isHeader = YES;
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"47B0110";
            row._column2 = @"C792, X792 550-Sheet Drawer";
            row._column3 = @" $349.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"47B0111";
            row._column2 = @"C792, X792 2000-Sheet High Capacity Feeder";
            row._column3 = @" $899.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"47B0113";
            row._column2 = @"C792 Banner Media Tray";
            row._column3 = @" $499.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"47B1100";
            row._column2 = @"C792, X792 Staple Finisher";
            row._column3 = @" $699.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"47B1101";
            row._column2 = @"C792, X792 5-Bin Mailbox";
            row._column3 = @" $699.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"47B1102";
            row._column2 = @"C792, X792 High Capacity Output Stacker";
            row._column3 = @" $549.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"47B1103";
            row._column2 = @"C792, X792 Staple Finisher with Hole Punch";
            row._column3 = @" $999.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"Lexmark X792 Memory Options";
            row._column3 = @"";
            row._isHeader = YES;
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"1025041";
            row._column2 = @"X560n 256MB DDR II SDRAM DIMM";
            row._column3 = @" $599.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"1025042";
            row._column2 = @"X560n 512MB DDR II SDRAM DIMM";
            row._column3 = @" $599.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"1025043";
            row._column2 = @"X560n 1GB DDR II SDRAM DIMM";
            row._column3 = @" $859.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"Lexmark X792 Flash Memory Option";
            row._column3 = @"";
            row._isHeader = YES;
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"14F0245";
            row._column2 = @"256MB User Flash Memory";
            row._column3 = @" $399.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"Lexmark X792 Font Cards";
            row._column3 = @"";
            row._isHeader = YES;
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"30G0825";
            row._column2 = @"Korean Font Card ";
            row._column3 = @" $224.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"30G0826";
            row._column2 = @"Simplified Chinese Font Card ";
            row._column3 = @" $224.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"30G0827";
            row._column2 = @"Traditional Chinese Font Card ";
            row._column3 = @" $224.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"30G0828";
            row._column2 = @"Japanese Font Card ";
            row._column3 = @" $224.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"30G0287";
            row._column2 = @"Arabic Font Card ";
            row._column3 = @" $224.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"Lexmark X792 Application Solutions</h7>";
            row._column3 = @"";
            row._isHeader = YES;
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"47B1113";
            row._column2 = @"C792 Forms and Bar Code Card";
            row._column3 = @" $380.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"47B1114";
            row._column2 = @"C792 Card for IPDS";
            row._column3 = @" $899.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"47B1115";
            row._column2 = @"C792 PRESCRIBE Card";
            row._column3 = @" $199.00 ";
            [tableSet addObject:row];
                
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"Lexmark X792 Print Servers";
            row._column3 = @"";
            row._isHeader = YES;
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"27X0025";
            row._column2 = @"MarkNet N8250 802.11b/g/n Wireless Print Server (US/Americas)";
            row._column3 = @" $449.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"14F0037";
            row._column2 = @"MarkNet N8120 Gigabit Ethernet Print Server";
            row._column3 = @" $149.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"14F0042";
            row._column2 = @"MarkNet N8130 Fiber Ethernet Print Server";
            row._column3 = @" $499.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"14T0230";
            row._column2 = @"MarkNet 7000e Fast Ethernet - 1 port -- USB";
            row._column3 = @" $249.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"14T0240";
            row._column2 = @"MarkNet 7002e Fast Ethernet - 1 port -- parallel";
            row._column3 = @" $249.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"14T0220";
            row._column2 = @"MarkNet 7020e Gigabit Ethernet - 4 port --USB";
            row._column3 = @" $349.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"Lexmark X792 Local Connections";
            row._column3 = @"";
            row._isHeader = YES;
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"14F0000";
            row._column2 = @"Parallel 1284-B Interface Catd";
            row._column3 = @" $79.00 ";
            [tableSet addObject:row];
            row = [RowContainer alloc];
            row._column1 = @"14F0100";
            row._column2 = @"RS-232C Serial Interface Card";
            row._column3 = @" $79.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"Lexmark X792 Cables";
            row._column3 = @"";
            row._isHeader = YES;
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"1021231";
            row._column2 = @"10' A-B Parallel Cable";
            row._column3 = @" $24.99 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"1021294";
            row._column2 = @"USB Cable (2M)";
            row._column3 = @" $18.90 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"Lexmark X792 Options";
            row._column3 = @"";
            row._isHeader = YES;
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"57X0020";
            row._column2 = @"Lexmark PKI Authentication for MFPs and eSF capable";
            row._column3 = @" $498.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"3053996";
            row._column2 = @"Large Pod for Lexmark PKI Card Reader";
            row._column3 = @" $26.99 ";
            [tableSet addObject:row];
                    
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"Lexmark X792 Furniture";
            row._column3 = @"";
            row._isHeader = YES;
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"47B0114";
            row._column2 = @"C792, X792 Caster Base";
            row._column3 = @" $349.00 ";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"47B0112";
            row._column2 = @"C792, X792 Spacer";
            row._column3 = @" $169.00 ";
            [tableSet addObject:row];
            
            item = [Data alloc];
            item._type = enum_infotype_table2columns;
            item._key = @" • Machine Options Matrix:";
            item._rowValue = tableSet;
            
            [machineOptionsItems addObject:item];
            break;
        }
            
        default: {
            break;
        }
    }
    
    return machineOptionsItems;
}

+ (NSMutableArray *) getTaaOrderingMatrixItems:(enum ProductType) productType
{
    NSMutableArray *taaOrderingMatrixItems = [NSMutableArray array];
    Data *item;
    
    switch (productType) {
        case enum_producttype_X792: {
            NSLog(@"X792 selected");
            
            NSMutableArray *tableSet = [NSMutableArray array];
            
            RowContainer *row = [RowContainer alloc];
            row._column1 = @"Model";
            row._column2 = @"Volts";
            row._column3 = @"TLI";
            row._column4 = @"UPC Code";
            row._column5 = @"Power Cord";
            row._column6 = @"Config A4 / Ltr";
            row._column7 = @"Model Number";
            row._isHeader = YES;
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"WW TAA Schedule 70 LV";
            row._column2 = @"";
            row._column3 = @"";
            row._column4 = @"";
            row._column5 = @"";
            row._column6 = @"";
            row._column7 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792de";
            row._column2 = @"LV";
            row._column3 = @"47BT020";
            row._column4 = @"7-34646-24357-5";
            row._column5 = @"3051609";
            row._column6 = @"Ltr";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792de";
            row._column2 = @"LV";
            row._column3 = @"47BT020";
            row._column4 = @"7-34646-24357-5 ";
            row._column5 = @"3051609";
            row._column6 = @"Ltr";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792dte";
            row._column2 = @"LV";
            row._column3 = @"47BT021";
            row._column4 = @"7-34646-24358-2 ";
            row._column5 = @"3051609";
            row._column6 = @"Ltr";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792dtfe";
            row._column2 = @"LV";
            row._column3 = @"47BT022";
            row._column4 = @"7-34646-24359-9 ";
            row._column5 = @"3051609";
            row._column6 = @"Ltr";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792dtpe";
            row._column2 = @"LV";
            row._column3 = @"47BT023";
            row._column4 = @"7-34646-24360-5 ";
            row._column5 = @"3051609";
            row._column6 = @"Ltr";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792dtme";
            row._column2 = @"LV";
            row._column3 = @"47BT024";
            row._column4 = @"7-34646-24361-2 ";
            row._column5 = @"3051609";
            row._column6 = @"Ltr";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792dtse";
            row._column2 = @"LV";
            row._column3 = @"47BT025";
            row._column4 = @"7-34646-24362-9 ";
            row._column5 = @"3051609";
            row._column6 = @"Ltr";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"WW TAA Schedule 70 HV";
            row._column2 = @"";
            row._column3 = @"";
            row._column4 = @"";
            row._column5 = @"";
            row._column6 = @"";
            row._column7 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792de";
            row._column2 = @"HV";
            row._column3 = @"47BT026";
            row._column4 = @"7-34646-24363-6 ";
            row._column5 = @"1339520";
            row._column6 = @"";
            row._column7 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"";
            row._column3 = @"";
            row._column4 = @"";
            row._column5 = @"1339519";
            row._column6 = @"A4";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792dte";
            row._column2 = @"HV";
            row._column3 = @"47BT027";
            row._column4 = @"7-34646-24364-3 ";
            row._column5 = @"1339520";
            row._column6 = @"";
            row._column7 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"";
            row._column3 = @"";
            row._column4 = @"";
            row._column5 = @"1339519";
            row._column6 = @"A4";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792dtfe";
            row._column2 = @"HV";
            row._column3 = @"47BT028";
            row._column4 = @"7-34646-24365-0 ";
            row._column5 = @"1339520";
            row._column6 = @"";
            row._column7 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"";
            row._column3 = @"";
            row._column4 = @"";
            row._column5 = @"1339519";
            row._column6 = @"A4";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792dtpe";
            row._column2 = @"HV";
            row._column3 = @"47BT029";
            row._column4 = @"7-34646-24366-7 ";
            row._column5 = @"1339520";
            row._column6 = @"";
            row._column7 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"";
            row._column3 = @"";
            row._column4 = @"";
            row._column5 = @"1339519";
            row._column6 = @"A4";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792dtme";
            row._column2 = @"HV";
            row._column3 = @"47BT030";
            row._column4 = @"7-34646-24367-4";
            row._column5 = @"1339520";
            row._column6 = @"";
            row._column7 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"";
            row._column3 = @"";
            row._column4 = @"";
            row._column5 = @"1339519";
            row._column6 = @"A4";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792dtse";
            row._column2 = @"HV";
            row._column3 = @"47BT031";
            row._column4 = @"7-34646-24368-1";
            row._column5 = @"1339520";
            row._column6 = @"";
            row._column7 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"";
            row._column3 = @"";
            row._column4 = @"";
            row._column5 = @"1339519";
            row._column6 = @"A4";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"WW TAA Schedule 36LV";
            row._column2 = @"";
            row._column3 = @"";
            row._column4 = @"";
            row._column5 = @"";
            row._column6 = @"";
            row._column7 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792de";
            row._column2 = @"LV";
            row._column3 = @"47BT032";
            row._column4 = @"7-34646-24369-8";
            row._column5 = @"3051609";
            row._column6 = @"Ltr";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792dte";
            row._column2 = @"LV";
            row._column3 = @"47BT033";
            row._column4 = @"7-34646-24378-0";
            row._column5 = @"3051609";
            row._column6 = @"Ltr";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792dtfe";
            row._column2 = @"LV";
            row._column3 = @"47BT034";
            row._column4 = @"7-34646-24379-7";
            row._column5 = @"3051609";
            row._column6 = @"Ltr";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792dtpe";
            row._column2 = @"LV";
            row._column3 = @"47BT035";
            row._column4 = @"7-34646-24380-3";
            row._column5 = @"3051609";
            row._column6 = @"Ltr";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792dtme";
            row._column2 = @"LV";
            row._column3 = @"47BT036";
            row._column4 = @"7-34646-24381-0";
            row._column5 = @"3051609";
            row._column6 = @"Ltr";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792dtse";
            row._column2 = @"LV";
            row._column3 = @"47BT037";
            row._column4 = @"7-34646-24382-7";
            row._column5 = @"3051609";
            row._column6 = @"Ltr";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"WW TAA Schedule 36 HV";
            row._column2 = @"";
            row._column3 = @"";
            row._column4 = @"";
            row._column5 = @"";
            row._column6 = @"";
            row._column7 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792de";
            row._column2 = @"HV";
            row._column3 = @"47BT038";
            row._column4 = @"7-34646-24383-4";
            row._column5 = @"1339520";
            row._column6 = @"";
            row._column7 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"";
            row._column3 = @"";
            row._column4 = @"";
            row._column5 = @"1339519";
            row._column6 = @"A4";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792dte";
            row._column2 = @"HV";
            row._column3 = @"47BT039";
            row._column4 = @"7-34646-24384-1";
            row._column5 = @"1339520";
            row._column6 = @"";
            row._column7 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"";
            row._column3 = @"";
            row._column4 = @"";
            row._column5 = @"1339519";
            row._column6 = @"A4";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792dtfe";
            row._column2 = @"HV";
            row._column3 = @"47BT040";
            row._column4 = @"7-34646-24385-8";
            row._column5 = @"1339520";
            row._column6 = @"";
            row._column7 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"";
            row._column3 = @"";
            row._column4 = @"";
            row._column5 = @"1339519";
            row._column6 = @"A4";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792dtpe";
            row._column2 = @"HV";
            row._column3 = @"47BT041";
            row._column4 = @"7-34646-24386-5";
            row._column5 = @"1339520";
            row._column6 = @"";
            row._column7 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"";
            row._column3 = @"";
            row._column4 = @"";
            row._column5 = @"1339519";
            row._column6 = @"A4";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792dtme";
            row._column2 = @"HV";
            row._column3 = @"47BT042";
            row._column4 = @"7-34646-24387-2";
            row._column5 = @"1339520";
            row._column6 = @"";
            row._column7 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"";
            row._column3 = @"";
            row._column4 = @"";
            row._column5 = @"1339519";
            row._column6 = @"A4";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792dtse";
            row._column2 = @"HV";
            row._column3 = @"47BT043";
            row._column4 = @"7-34646-24388-9";
            row._column5 = @"1339520";
            row._column6 = @"";
            row._column7 = @"";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"";
            row._column3 = @"";
            row._column4 = @"";
            row._column5 = @"1339519";
            row._column6 = @"A4";
            row._column7 = @"7562-436";
            [tableSet addObject:row];
            
            
            item = [Data alloc];
            item._type = enum_infotype_table2columns;
            item._key = @" • TAA Ordering Matrix:";
            item._rowValue = tableSet;
            
            [taaOrderingMatrixItems addObject:item];
            break;
        }
        
        default: {
            break;
        }
    }
    
    return taaOrderingMatrixItems;
}

+ (NSMutableArray *) getTaaSuppliesMatrixItems:(enum ProductType) productType
{
    NSMutableArray *taaSuppliesMatrixItems = [NSMutableArray array];
    Data *item;
    
    switch (productType) {
        case enum_producttype_X792: {
            NSLog(@"X792 selected");
            
            NSMutableArray *tableSet = [NSMutableArray array];
            
            RowContainer *row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"TAA/GSA Print Cartridges";
            row._column3 = @"";
            row._isHeader = YES;
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"C792, X792 Cyan Return Pgm TAA/GSA Print Cartridge";
            row._column2 = @"C792A4CG";
            row._column3 = @"7-34646-22681-3";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"C792, X792 Magenta Return Pgm TAA/GSA Print Cartridge ";
            row._column2 = @"C792A4MG";
            row._column3 = @"7-34646-22684-4";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"C792, X792 Yellow Return Pgm TAA/GSA Print Cartridge ";
            row._column2 = @"C792A4YG";
            row._column3 = @"7-34646-22685-1";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"C792, X792 Black Return Pgm TAA/GSA Print Cartridge ";
            row._column2 = @"C792A4KG";
            row._column3 = @"7-34646-22686-8";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792 Cyan Extra High Yield Return Pgm TAA/GSA Print Cartridge ";
            row._column2 = @"X792X4CG";
            row._column3 = @"7-34646-25249-2";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792 Magenta Extra High Yield Return Pgm TAA/GSA Print Cartridge ";
            row._column2 = @"X792X4MG";
            row._column3 = @"7-34646-25253-9";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792 Yellow Extra High Yield Return Pgm TAA/GSA Print Cartridge ";
            row._column2 = @"X792X4YG";
            row._column3 = @"7-34646-25254-6";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"X792 Black Extra High Yield Return Pgm TAA/GSA Print Cartridge ";
            row._column2 = @"X792X4KG";
            row._column3 = @"7-34646-25255-3";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"Staples";
            row._column3 = @"";
            row._isHeader = YES;
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"Staple Cartidges";
            row._column2 = @"25A0013";
            row._column3 = @"7-34646-55313-1";
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"";
            row._column2 = @"Maintenance";
            row._column3 = @"";
            row._isHeader = YES;
            [tableSet addObject:row];
            
            row = [RowContainer alloc];
            row._column1 = @"C792, X792 Waste Toner Bottle";
            row._column2 = @"C792X77G";
            row._column3 = @"7-34646-22836-7";
            [tableSet addObject:row];
            
            item = [Data alloc];
            item._type = enum_infotype_table2columns;
            item._key = @" • TAA Supplies Matrix:";
            item._rowValue = tableSet;
            
            [taaSuppliesMatrixItems addObject:item];
            break;
        }
        
        default: {
            break;
        }
    }
    
    return taaSuppliesMatrixItems;
}


+ (NSMutableArray *) getCompetitorSpecItems:(enum ProductType) productType
{
    NSMutableArray *competitorSpecsItems = [NSMutableArray array];
    Data *item;
    
    switch (productType) {
        case enum_competitortype_X792_HP_CM4540: {
            NSLog(@"HP CM4540 selected");
            
            item = [Data alloc];
            item._type = enum_infotype_image;
            item._key = @" • Product Image:";
            item._stringValue= @"hpcm4540.png";
            [competitorSpecsItems addObject:item];
            [item release];
            
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • SRP/Street Price:";
            item._stringValue= @"None/$3,799";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Manufacturing Status:";
            item._stringValue= @"New";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Domestic Intro Date:";
            item._stringValue= @"November 2010";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • OEM:";
            item._stringValue= @"HP (Japan)";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Also Sold As:";
            item._stringValue= @"None ";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Distributed By:";
            item._stringValue= @"Info not avail";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Max Monthly Duty Cycle:";
            item._stringValue= @"175,000 impressions";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Recommended Monthly Volume:";
            item._stringValue= @"5,000 to 9,000 impressions";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • TYPE:";
            item._stringValue= @"Full-color printer, MF";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Configuration/Scanner:";
            item._stringValue= @"Desktop,digital";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Toner:";
            item._stringValue= @"dry, monocomponent";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • First Copy Time:";
            item._stringValue= @"12 sec color/12 sec black";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Multicopy (Ltr/Lgl/Ldgr):";
            item._stringValue= @"42 cpm color/42 cpm black";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Warm-up Time:";
            item._stringValue= @"None";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Std Paper Source(s):";
            item._stringValue= @"Single drawer";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Std Paper Capacity:";
            item._stringValue= @"500 sheets";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Paper Weights:";
            item._stringValue= @"Info not avail";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Bypass/Paper Weights:";
            item._stringValue= @"100-sheet/Info not avail";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Max Paper Sources:";
            item._stringValue= @"4";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Max Paper Capacity:";
            item._stringValue= @"2,100 sheets";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Max Original Size:";
            item._stringValue= @"8-1/2 x 14";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Output Size (Min/Max):";
            item._stringValue= @"4 x 6/8-1/2 x 14";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Copy Resolution:";
            item._stringValue= @"600 x 600 dpi";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • System Memory (Std/Max):";
            item._stringValue= @"1,280-MB RAM, 250-GB HD/1,280-MB RAM, 250-GB HD";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Duplex:";
            item._stringValue= @"Auto (1:2,2:2,2:1)";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Duplex Capacity/Paper Sizes:";
            item._stringValue= @"Unlimited/Info not avail";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Document Feeder:";
            item._stringValue= @"Std RADF";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Doc Feeder Speed/Capacity:";
            item._stringValue= @"Info not avail/50 orig";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Paper Weights:";
            item._stringValue= @"Info not avail";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Sorter (Bins/Capacity):";
            item._stringValue= @"None";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Staple Sorter:";
            item._stringValue= @"None";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Bins/Stapling Capacity:";
            item._stringValue= @"Not applicable";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Stapling Positions:";
            item._stringValue= @"Not applicable";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Finisher:";
            item._stringValue= @"None";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Tray/Stapling/Position(s):";
            item._stringValue= @"Not applicable";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Other:";
            item._stringValue= @"Opt 900-sheet 3-bin stapling mailbox sorts, collates, staples and stacks documents";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Dimensions (HxWxD):";
            item._stringValue= @"22.6 in. x 35.6 in. x 24.5 in.";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Weight:";
            item._stringValue= @"120.5 lbs";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Power Requirements:";
            item._stringValue= @"110-127 V, 12 A";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Energy Used While Power Off:";
            item._stringValue= @".3W";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Energy Used in Power Save Mode:";
            item._stringValue= @"21.5W";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Energy Used in Ready Mode:";
            item._stringValue= @"91W";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Energy Used While Copying:";
            item._stringValue= @"850W";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Energy Used While Printing:";
            item._stringValue= @"780W";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Energy Used While Scanning:";
            item._stringValue= @"Info not avail";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Max Power Consumption:";
            item._stringValue= @"Info not avail";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • TEC Value:";
            item._stringValue= @"Info not avail";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Dedicated Outlet:";
            item._stringValue= @"Not required";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Energy Star Compliant:";
            item._stringValue= @"Yes";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • Operating Noise Level:";
            item._stringValue= @"57 dB";
            [competitorSpecsItems addObject:item];
            [item release];
            
            item = [Data alloc];
            item._type = enum_infotype_text;
            item._key = @" • COMMENTS:";
            item._stringValue= @"None";
            [competitorSpecsItems addObject:item];
            [item release];
            
            break;
        }
        
        default: {
            break;
        }
    }
    
    return competitorSpecsItems;
}

@end
