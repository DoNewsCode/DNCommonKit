//
//  DNViewController.m
//  DNCommonKit
//
//  Created by 540563689@qq.com on 09/07/2018.
//  Copyright (c) 2018 540563689@qq.com. All rights reserved.
//

#import "DNViewController.h"
#import "NSString+CTAdd.h"

@interface DNViewController ()

@end

@implementation DNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *temp = [NSString ct_formatCountStringWithCount:10000];
    NSString *temp1 = [NSString ct_commentCountStringWithCount:10000];
    NSLog(@"ct_formatCountStringWithCount-------:%@",temp);
    NSLog(@"ct_commentCountStringWithCount-------:%@",temp1);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
