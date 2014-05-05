//
//  CenterViewController.m
//  JASlidePanelSample
//
//  Created by oga on 2014/05/05.
//  Copyright (c) 2014年 R.O Works. All rights reserved.
//

#import "CenterViewController.h"
#import "AppDefine.h"

@interface CenterViewController ()

@end

@implementation CenterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	// 左パネルからの通知を受信する設定
	NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
	[nc addObserver:self selector:@selector(__leftSelectCellRowNotification:) name:kLeftViewDidSelectedCellNotification object:nil];
}
- (void)dealloc
{
	NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
	[nc removeObserver:self name:kLeftViewDidSelectedCellNotification object:nil];
}
- (void)__leftSelectCellRowNotification:(NSNotification *)notification
{
	NSDictionary *dict = [notification userInfo];
	_label.text = dict[kSelectCellRowTitleUserInfoKey];
}


@end
