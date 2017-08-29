//
//  HomePageViewController.m
//  BlockChain
//
//  Created by 冯倩 on 2017/8/21.
//  Copyright © 2017年 冯倩. All rights reserved.
//

#import "HomePageViewController.h"
#import "TestViewController.h"

@interface HomePageViewController ()

@end

@implementation HomePageViewController

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.hidesBottomBarWhenPushed = NO;
        self.title = @"首页";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 100, 100, 50)];
    btn.backgroundColor = [UIColor grayColor];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnAction
{
    TestViewController *testVC = [[TestViewController alloc] init];
    [self.navigationController pushViewController:testVC animated:YES];
    
}




@end
