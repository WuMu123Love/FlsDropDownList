//
//  JJOptionController.m
//  FlsDropDownList
//
//  Created by 天立泰 on 2019/1/14.
//  Copyright © 2019年 天立泰. All rights reserved.
//

#import "JJOptionController.h"
#import "JJOptionView/JJOptionView.h"
#import "JJOptionSearchController.h"
@interface JJOptionController ()<JJOptionViewDelegate>

@end

@implementation JJOptionController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 100, 100, 30);
    [button addTarget:self action:@selector(next) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"搜索" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    JJOptionView *view = [[JJOptionView alloc] initWithFrame:CGRectMake(100, 700, 200, 40)];
    view.dataSource = @[@"111",@"222",@"333",@"444",@"555"];
    view.selectedBlock = ^(JJOptionView * _Nonnull optionView, NSInteger selectedIndex) {
        NSLog(@"%@",optionView);
        NSLog(@"%ld",selectedIndex);
    };
    [self.view addSubview:view];
    
    
    JJOptionView *view1 = [[JJOptionView alloc] initWithFrame:CGRectMake(100, 300, 200, 40)];
    view1.dataSource = @[@"1",@"2",@"3",@"4",@"5"];
    view1.delegate = self;
    [self.view addSubview:view1];
    // Do any additional setup after loading the view, typically from a nib.}

}
- (void)next {
    JJOptionSearchController *vc = [JJOptionSearchController new];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)optionView:(JJOptionView *)optionView selectedIndex:(NSInteger)selectedIndex {
    NSLog(@"%@",optionView);
    NSLog(@"%ld",selectedIndex);
}
@end
