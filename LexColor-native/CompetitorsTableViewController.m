//
//  CompetitorsTableViewController.m
//  LexColor-native
//
//  Created by Ringo Bajenting on 6/5/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import "CompetitorsTableViewController.h"
#import "CompetitorTableViewCell.h"
#import "CompetitorDetailsViewController.h"
#import "Product.h"
#import "Utils.h"

@interface CompetitorsTableViewController ()

@end

@implementation CompetitorsTableViewController
@synthesize x792competitors = _x792competitors;
@synthesize c792competitors = _c792competitors;
@synthesize x746competitors = _x746competitors;
@synthesize x748competitors = _x748competitors;
@synthesize c746competitors = _c746competitors;
@synthesize c748competitors = _c748competitors;
@synthesize cx510competitors = _cx510competitors;
@synthesize cs510competitors = _cs510competitors;
@synthesize cx410competitors = _cx410competitors;
@synthesize cs410competitors = _cs410competitors;
@synthesize cx310competitors = _cx310competitors;
@synthesize cs310competitors = _cs310competitors;
@synthesize x925competitors = _x925competitors;
@synthesize c925competitors = _c925competitors;
@synthesize x950competitors = _x950competitors;
@synthesize x954competitors = _x954competitors;
@synthesize c950competitors = _c950competitors;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    // set up navigation bar
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"headerbackground.png"] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.translucent = NO;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 180, 30)];
    titleLabel.textColor = Utils.getColorLexmarkWhite;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:16];
    titleLabel.text = @"Lexmark Competitors";
    self.navigationItem.titleView = titleLabel;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 17;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    NSInteger retVal = 0;
    
    switch (section) {
        case 0: {
            retVal = [self.x792competitors count];
            break;
        }
        case 1: {
            retVal = [self.c792competitors count];
            break;
        }
        case 2: {
            retVal = [self.x746competitors count];
            break;
        }
        case 3: {
            retVal = [self.x748competitors count];
            break;
        }
        case 4: {
            retVal = [self.c746competitors count];
            break;
        }
        case 5: {
            retVal = [self.c748competitors count];
            break;
        }
        case 6: {
            retVal = [self.cx510competitors count];
            break;
        }
        case 7: {
            retVal = [self.cs510competitors count];
            break;
        }
        case 8: {
            retVal = [self.cx410competitors count];
            break;
        }
        case 9: {
            retVal = [self.cs410competitors count];
            break;
        }
        case 10: {
            retVal = [self.cx310competitors count];
            break;
        }
        case 11: {
            retVal = [self.cs310competitors count];
            break;
        }
        case 12: {
            retVal = [self.x925competitors count];
            break;
        }
        case 13: {
            retVal = [self.c925competitors count];
            break;
        }
        case 14: {
            retVal = [self.x950competitors count];
            break;
        }
        case 15: {
            retVal = [self.x954competitors count];
            break;
        }
        case 16: {
            retVal = [self.c950competitors count];
            break;
        }
    }
    
    return retVal;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"competitorTableCell";
    
    CompetitorTableViewCell *cell = [tableView
                              dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[CompetitorTableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    Product *product = [[Product alloc] init];
    
    switch (indexPath.section) {
        case 0: {
            product = (self.x792competitors)[indexPath.row];
            break;
        }
        case 1: {
            product = (self.c792competitors)[indexPath.row];
            break;
        }
        case 2: {
            product = (self.x746competitors)[indexPath.row];
            break;
        }
        case 3: {
            product = (self.x748competitors)[indexPath.row];
            break;
        }
        case 4: {
            product = (self.c746competitors)[indexPath.row];
            break;
        }
        case 5: {
            product = (self.c748competitors)[indexPath.row];
            break;
        }
        case 6: {
            product = (self.cx510competitors)[indexPath.row];
            break;
        }
        case 7: {
            product = (self.cs510competitors)[indexPath.row];
            break;
        }
        case 8: {
            product = (self.cx410competitors)[indexPath.row];
            break;
        }
        case 9: {
            product = (self.cs410competitors)[indexPath.row];
            break;
        }
        case 10: {
            product = (self.cx310competitors)[indexPath.row];
            break;
        }
        case 11: {
            product = (self.cs310competitors)[indexPath.row];
            break;
        }
        case 12: {
            product = (self.x925competitors)[indexPath.row];
            break;
        }
        case 13: {
            product = (self.c925competitors)[indexPath.row];
            break;
        }
        case 14: {
            product = (self.x950competitors)[indexPath.row];
            break;
        }
        case 15: {
            product = (self.x954competitors)[indexPath.row];
            break;
        }
        case 16: {
            product = (self.c950competitors)[indexPath.row];
            break;
        }
        default:
            break;
    }
    
    cell.nameLabel.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:16];
    cell.nameLabel.text = product.name;
    cell.descLabel.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:12];
    cell.descLabel.text = product.desc;
    
    UIImage *image = [UIImage imageNamed:product.image];
    
    cell.imageView.image = image;
    
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 25)];
    UILabel *label = Utils.getFormattedLabel;
    NSString *title = @"";
    
    switch (section) {
        case 0: {
            title = @" X792 Competitors";
            break;
        }
        case 1: {
            title = @" C792 Competitors";
            break;
        }
        case 2: {
            title = @" X746 Competitors";
            break;
        }
        case 3: {
            title = @" X748 Competitors";
            break;
        }
        case 4: {
            title = @" C746 Competitors";
            break;
        }
        case 5: {
            title = @" C748 Competitors";
            break;
        }
        case 6: {
            title = @" CX510 Competitors";
            break;
        }
        case 7: {
            title = @" CS510 Competitors";
            break;
        }
        case 8: {
            title = @" CX410 Competitors";
            break;
        }
        case 9: {
            title = @" CS410 Competitors";
            break;
        }
        case 10: {
            title = @" CX310 Competitors";
            break;
        }
        case 11: {
            title = @" CS310 Competitors";
            break;
        }
        case 12: {
            title = @" X925 Competitors";
            break;
        }
        case 13: {
            title = @" C925 Competitors";
            break;
        }
        case 14: {
            title = @" X950 Competitors";
            break;
        }
        case 15: {
            title = @" X954 Competitors";
            break;
        }
        case 16: {
            title = @" C950 Competitors";
            break;
        }
        default: {
            break;
        }
    }
    
    
    [label setText:title];
    [view addSubview:label];
    
    return view;
}
/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([segue.identifier isEqualToString:@"showCompetitorDetails"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSUInteger section = [indexPath section];
        CompetitorDetailsViewController *destViewController = segue.destinationViewController;
        
        switch (section) {
            case 0: {
                destViewController._product = [_x792competitors objectAtIndex:indexPath.row];
                break;
            }
            case 1: {
                destViewController._product = [_c792competitors objectAtIndex:indexPath.row];
                break;
            }
            case 2: {
                destViewController._product = [_x746competitors objectAtIndex:indexPath.row];
                break;
            }
            case 3: {
                destViewController._product = [_x748competitors objectAtIndex:indexPath.row];
                break;
            }
            case 4: {
                destViewController._product = [_c746competitors objectAtIndex:indexPath.row];
                break;
            }
            case 5: {
                destViewController._product = [_c748competitors objectAtIndex:indexPath.row];
                break;
            }
            case 6: {
                destViewController._product = [_cx510competitors objectAtIndex:indexPath.row];;
                break;
            }
            case 7: {
                destViewController._product = [_cs510competitors objectAtIndex:indexPath.row];;
                break;
            }
            case 8: {
                destViewController._product = [_cx410competitors objectAtIndex:indexPath.row];;
                break;
            }
            case 9: {
                destViewController._product = [_cs410competitors objectAtIndex:indexPath.row];;
                break;
            }
            case 10: {
                destViewController._product = [_cx310competitors objectAtIndex:indexPath.row];;
                break;
            }
            case 11: {
                destViewController._product = [_cs310competitors objectAtIndex:indexPath.row];;
                break;
            }
            case 12: {
                destViewController._product = [_x925competitors objectAtIndex:indexPath.row];;
                break;
            }
            case 13: {
                destViewController._product = [_c925competitors objectAtIndex:indexPath.row];;
                break;
            }
            case 14: {
                destViewController._product = [_x950competitors objectAtIndex:indexPath.row];;
                break;
            }
            case 15: {
                destViewController._product = [_x954competitors objectAtIndex:indexPath.row];;
                break;
            }
            case 16: {
                destViewController._product = [_c950competitors objectAtIndex:indexPath.row];;
                break;
            }
            default: {
                break;
            }
        }
    }
}


@end
