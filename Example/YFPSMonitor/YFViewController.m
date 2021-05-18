//
//  YFViewController.m
//  YFPSMonitor
//
//  Created by eaffy on 05/14/2021.
//  Copyright (c) 2021 eaffy. All rights reserved.
//

#import "YFViewController.h"
#import <YFPSMonitor/YFPSMonitor.h>

@interface YFViewController ()

@end

@implementation YFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIColor *randomColor = [UIColor colorWithRed:arc4random() % 255 / 255.0 green:arc4random() % 255 / 255.0 blue:arc4random() % 255 / 255.0 alpha:1];
    [self.view setBackgroundColor: randomColor];
    UILabel *label = [YFPSMonitor FPSLabel];
    CGRect frame = label.frame;
    frame.origin.x = 15;
    frame.origin.y = 98;
    label.frame = frame;
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.navigationController pushViewController:[YFViewController new] animated:YES];
}

@end
