//
//  ViewController.m
//  JASlidePanelSample
//
//  Created by oga on 2014/05/05.
//  Copyright (c) 2014年 R.O Works. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

-(void) awakeFromNib
{
	[self setLeftPanel:[self.storyboard instantiateViewControllerWithIdentifier:@"leftViewController"]];
	[self setCenterPanel:[self.storyboard instantiateViewControllerWithIdentifier:@"centerViewController"]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
