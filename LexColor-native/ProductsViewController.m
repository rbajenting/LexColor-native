//
//  ProductsViewController.m
//  LexColor-native
//
//  Created by Ringo Bajenting on 5/21/14.
//  Copyright (c) 2014 Ace. All rights reserved.
//

#import "ProductsViewController.h"
#import "Product.h"
#import "ProductCell.h"
#import "ProductDetailsViewController.h"
#import "Utils.h"

@interface ProductsViewController ()

@end

@implementation ProductsViewController

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
    titleLabel.text = @"Lexmark Color Offerings";
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
    return 7;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger retVal = 0;
    
    switch (section) {
        case 0: {
            retVal = [self.series79x count];
            break;
        }
        case 1: {
            retVal = [self.series74x count];
            break;
        }
        case 2: {
            retVal = [self.series51x count];
            break;
        }
        case 3: {
            retVal = [self.series41x count];
            break;
        }
        case 4: {
            retVal = [self.series31x count];
            break;
        }
        case 5: {
            retVal = [self.series92x count];
            break;
        }
        case 6: {
            retVal = [self.series95x count];
            break;
        }
    }
    
    return retVal;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ProductCell *cell = (ProductCell *)[tableView dequeueReusableCellWithIdentifier:@"ProductCell"];
    
    Product *product;
    
    switch (indexPath.section) {
        case 0: {
            product = (self.series79x)[indexPath.row];
            break;
        }
        case 1: {
            product = (self.series74x)[indexPath.row];
            break;
        }
        case 2: {
            product = (self.series51x)[indexPath.row];
            break;
        }
        case 3: {
            product = (self.series41x)[indexPath.row];
            break;
        }
        case 4: {
            product = (self.series31x)[indexPath.row];
            break;
        }
        case 5: {
            product = (self.series92x)[indexPath.row];
            break;
        }
        case 6: {
            product = (self.series95x)[indexPath.row];
            break;
        }
    }
    
    cell.nameLabel.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:16];
    cell.nameLabel.text = product.name;
    cell.descLabel.font = [UIFont fontWithName:Utils.getPrimaryFontStyle size:12];
    cell.descLabel.text = product.desc;
    
    return cell;
}
/*
- (UILabel *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UILabel *sectionLabel;
    
    return sectionLabel;
}*/
/*
- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForHeaderSection:(NSInteger)section
{
    return 55;
}
*/
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    
    NSString *title;
    
    switch (section) {
        case 0: {
            title = @"9X Series";
            break;
        }
        case 1: {
            title = @"74X Series";
            break;
        }
        case 2: {
            title = @"51X Series";
            break;
        }
        case 3: {
            title = @"41X Series";
            break;
        }
        case 4: {
            title = @"31X Series";
            break;
        }
        case 5: {
            title = @"92X Series";
            break;
        }
        case 6: {
            title = @"95X Series";
            break;
        }
    }
    
    return title;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 25)];
    UILabel *label = Utils.getFormattedLabel;
    NSString *title;
    
    switch (section) {
        case 0: {
            title = @" 79X Series";
            break;
        }
        case 1: {
            title = @" 74X Series";
            break;
        }
        case 2: {
            title = @" 51X Series";
            break;
        }
        case 3: {
            title = @" 41X Series";
            break;
        }
        case 4: {
            title = @" 31X Series";
            break;
        }
        case 5: {
            title = @" 92X Series";
            break;
        }
        case 6: {
            title = @" 95X Series";
            break;
        }
    }

    
    [label setText:title];
    [view addSubview:label];
    
    return view;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

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
    if([segue.identifier isEqualToString:@"showProductDetails"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSUInteger section = [indexPath section];
        ProductDetailsViewController *destViewController = segue.destinationViewController;
        
        switch (section) {
            case 0: {
                destViewController._product = [_series79x objectAtIndex:indexPath.row];
                break;
            }
            case 1: {
                destViewController._product = [_series74x objectAtIndex:indexPath.row];
                break;
            }
            case 2: {
                destViewController._product = [_series51x objectAtIndex:indexPath.row];
                break;
            }
            case 3: {
                destViewController._product = [_series41x objectAtIndex:indexPath.row];
                break;
            }
            case 4: {
                destViewController._product = [_series31x objectAtIndex:indexPath.row];
                break;
            }
            case 5: {
                destViewController._product = [_series92x objectAtIndex:indexPath.row];
                break;
            }
            case 6: {
                destViewController._product = [_series95x objectAtIndex:indexPath.row];;
                break;
            }
        }
    }
}


@end
