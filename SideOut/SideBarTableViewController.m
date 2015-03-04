//
//  SideBarTableViewController.m
//  SideOut
//
//  Created by 贾利琴 on 3/3/15.
//  Copyright (c) 2015 lawSet. All rights reserved.
//

#import "SideBarTableViewController.h"
#import "SWRevealViewController.h"
#import "MainMenuCellTableViewCell.h"

@interface SideBarTableViewController ()

@end

@implementation SideBarTableViewController

 NSArray *menuItems, *menuLabels;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    menuItems = @[@"title", @"news", @"comments", @"map", @"calendar", @"wishlist", @"bookmarks", @"tags"];
    menuLabels = [NSArray arrayWithObjects: @"APPCODA",  NSLocalizedString(@"News",nil),NSLocalizedString(@"Comments",nil),  NSLocalizedString(@"Map",nil),  NSLocalizedString(@"Calendar",nil),  NSLocalizedString(@"Wishlist",nil),  NSLocalizedString(@"Bookmarks",nil),  NSLocalizedString(@"Tags", nil), nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return menuItems.count;

}



#define kImageViewTag 1

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *CellIdentifier = [menuItems objectAtIndex:indexPath.row];
    NSString *CellLabel = [menuLabels objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = CellLabel;
    tableView.rowHeight = 83;
    
     UIImage* im = [UIImage imageNamed: @"news"];
    cell.imageView.image = im;

    UIGraphicsBeginImageContextWithOptions(CGSizeMake(32,32), YES, 0);
    [im drawInRect:CGRectMake(0,0,32,32)];
    UIImage* im2 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    cell.imageView.image = im2;
    cell.imageView.contentMode = UIViewContentModeCenter;

    
   return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
