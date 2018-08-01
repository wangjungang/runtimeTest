//
//  homeTableView.h
//  runtimeTest
//
//  Created by 王俊钢 on 2018/8/1.
//  Copyright © 2018年 wangjungang. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NNHomeTableViewDelegate<NSObject>
@optional
- (void)didSelectRowWithController:(UIViewController *)controller;

@end

@interface homeTableView : UITableView
@property (nonatomic, weak) id<NNHomeTableViewDelegate> homeTableViewDelegate;

@end
