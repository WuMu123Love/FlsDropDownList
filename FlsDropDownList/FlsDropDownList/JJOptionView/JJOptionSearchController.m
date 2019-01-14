//
//  JJOptionSearchController.m
//  FlsDropDownList
//
//  Created by 天立泰 on 2019/1/14.
//  Copyright © 2019年 天立泰. All rights reserved.
//

#import "JJOptionSearchController.h"
#import "JJSearchOptionView/JJSearchOptionView.h"

@interface JJOptionSearchController ()

@end

@implementation JJOptionSearchController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    self.view.backgroundColor = [UIColor whiteColor];
    JJSearchOptionView *view = [[JJSearchOptionView alloc] initWithFrame:CGRectMake(100, 700, 200, 40)];
    view.dataSource = @[@"1",@"22",@"213",@"432",@"462",@"872",@"298",@"245",@"20",@"20567"];
    view.selectedBlock = ^(JJSearchOptionView * _Nonnull optionView, NSString * _Nonnull selctedString, NSInteger selectedIndex) {
        
    };
    [self.view addSubview:view];
    
    JJSearchOptionView *view1 = [[JJSearchOptionView alloc] initWithFrame:CGRectMake(100, 300, 200, 40)];
    view1.dataSource = @[@"1",@"22",@"213",@"432",@"462",@"872",@"298",@"245",@"20",@"20567"];
    view1.selectedBlock = ^(JJSearchOptionView * _Nonnull optionView, NSString * _Nonnull selctedString, NSInteger selectedIndex) {
        
    };
    [self.view addSubview:view1];
}

@end
