
//
//  LMJDropdownMenuController.m
//  FlsDropDownList
//
//  Created by 天立泰 on 2019/1/14.
//  Copyright © 2019年 天立泰. All rights reserved.
//

#import "LMJDropdownMenuController.h"
#import "LMJDropdownMenu.h"

@interface LMJDropdownMenuController ()<LMJDropdownMenuDelegate>

@end

@implementation LMJDropdownMenuController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    LMJDropdownMenu * dropdownMenu = [[LMJDropdownMenu alloc] init];
    [dropdownMenu setFrame:CGRectMake(20, 80, 100, 40)];
    [dropdownMenu setMenuTitles:@[@"选项一",@"选项二",@"选项三",@"选项四",@"选项一",@"选项二",@"选项三",@"选项四",@"选项一",@"选项二",@"选项三",@"选项四"] rowHeight:30];
    dropdownMenu.delegate = self;
    [self.view addSubview:dropdownMenu];
}

#pragma mark - LMJDropdownMenu Delegate

- (void)dropdownMenu:(LMJDropdownMenu *)menu selectedCellNumber:(NSInteger)number{
    NSLog(@"你选择了：%ld",number);
}

- (void)dropdownMenuWillShow:(LMJDropdownMenu *)menu{
    NSLog(@"--将要显示--");
}
- (void)dropdownMenuDidShow:(LMJDropdownMenu *)menu{
    NSLog(@"--已经显示--");
}

- (void)dropdownMenuWillHidden:(LMJDropdownMenu *)menu{
    NSLog(@"--将要隐藏--");
}
- (void)dropdownMenuDidHidden:(LMJDropdownMenu *)menu{
    NSLog(@"--已经隐藏--");
}


@end
