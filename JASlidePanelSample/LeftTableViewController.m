//
//  LeftTableViewController.m
//  JASlidePanelSample
//
//  Created by oga on 2014/05/05.
//  Copyright (c) 2014年 R.O Works. All rights reserved.
//

#import "LeftTableViewController.h"
#import "AppDefine.h"

#import <JASidePanelController.h>
#import <UIViewController+JASidePanel.h>

@interface LeftTableViewController ()

@end

@implementation LeftTableViewController

static const NSInteger		kRows		= 20;

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return kRows;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [self __cellTitleAtRow:indexPath.row];
     
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
	
	// 通知を送信
	NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
	[nc postNotificationName:kLeftViewDidSelectedCellNotification
					  object:self
					userInfo:@{kSelectCellRowTitleUserInfoKey : [self __cellTitleAtRow:indexPath.row]}];
	
	// ここでセンターを表示
	[self.navigationController.sidePanelController showCenterPanelAnimated:YES];
}
/****************************
 *
 * Privarte Methods
 *
 ****************************/
#pragma mark -
#pragma mark ===== Privarte Methods =====
- (NSString*)__cellTitleAtRow:(NSInteger)row
{
	return [@(row+1) stringValue];
}

@end
