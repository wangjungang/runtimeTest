//
//  ViewController.m
//  runtimeTest
//
//  Created by 王俊钢 on 2018/7/31.
//  Copyright © 2018年 wangjungang. All rights reserved.
//

#import "ViewController.h"
#import "homeTableView.h"

@interface ViewController ()<NNHomeTableViewDelegate>

@property (nonatomic, strong) homeTableView *homeTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.homeTableView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 代理区域
- (void)didSelectRowWithController:(UIViewController *)controller {
    [self.navigationController pushViewController:controller animated:YES];
}

#pragma mark - 懒加载区域
- (homeTableView *)homeTableView {
    if (!_homeTableView) {
        _homeTableView = [[homeTableView alloc] initWithFrame:self.view.frame];
        _homeTableView.homeTableViewDelegate = self;
    }
    return _homeTableView;
}

@end
