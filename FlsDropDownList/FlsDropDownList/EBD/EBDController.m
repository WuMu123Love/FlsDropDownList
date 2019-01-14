//
//  EBDController.m
//  FlsDropDownList
//
//  Created by 天立泰 on 2019/1/14.
//  Copyright © 2019年 天立泰. All rights reserved.
//

#import "EBDController.h"
#import "EBDropdownListView.h"

@interface EBDController ()

@end

@implementation EBDController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *msgLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 200, 300, 20)];
    msgLabel.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:msgLabel];
    
    EBDropdownListItem *item1 = [[EBDropdownListItem alloc] initWithItem:@"1" itemName:@"item1"];
    EBDropdownListItem *item2 = [[EBDropdownListItem alloc] initWithItem:@"2" itemName:@"item2"];
    EBDropdownListItem *item3 = [[EBDropdownListItem alloc] initWithItem:@"3" itemName:@"item3"];
    EBDropdownListItem *item4 = [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item5 = [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item6 = [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item7 = [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item8 = [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item9 = [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item10 = [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item11 = [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item12= [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item13= [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item14 = [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item15 = [[EBDropdownListItem alloc] initWithItem:@"1" itemName:@"item1"];
    EBDropdownListItem *item16 = [[EBDropdownListItem alloc] initWithItem:@"2" itemName:@"item2"];
    EBDropdownListItem *item17= [[EBDropdownListItem alloc] initWithItem:@"3" itemName:@"item3"];
    EBDropdownListItem *item18= [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item19= [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item20= [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item21 = [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item22 = [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item23 = [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item24 = [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item25 = [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item26= [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item27= [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item28 = [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item29 = [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    EBDropdownListItem *item30 = [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];
    
    
    // 弹出框向上
    EBDropdownListView *dropdownListView = [[EBDropdownListView alloc] initWithDataSource:@[item1, item2, item3, item4, item5, item6, item7, item8, item9, item10, item11, item12, item13, item14, item15, item16, item17, item18, item19, item20, item21, item22, item23, item24, item25, item26, item27, item28, item29, item30]];
    dropdownListView.frame = CGRectMake(20, 100, 130, 30);
    dropdownListView.selectedIndex = 2;
    [dropdownListView setViewBorder:0 borderColor:[UIColor redColor] cornerRadius:2];
    [self.view addSubview:dropdownListView];
    
    [dropdownListView setDropdownListViewSelectedBlock:^(EBDropdownListView *dropdownListView) {
        NSString *msgString = [NSString stringWithFormat:
                               @"selected name:%@  id:%@  index:%ld"
                               , dropdownListView.selectedItem.itemName
                               , dropdownListView.selectedItem.itemId
                               , dropdownListView.selectedIndex];
        
        msgLabel.text = msgString;
        
    }];
    
    // 弹出框向下
    EBDropdownListView *dropdownListView1 = [EBDropdownListView new];
    dropdownListView1.dataSource = @[item1, item2, item3, item4];
    dropdownListView1.frame = CGRectMake(20, CGRectGetHeight(self.view.frame) - 50, 130, 30);
    dropdownListView1.selectedIndex = 1;
    [dropdownListView1 setViewBorder:0.5 borderColor:[UIColor grayColor] cornerRadius:2];
    [self.view addSubview:dropdownListView1];
    
    
    [dropdownListView1 setDropdownListViewSelectedBlock:^(EBDropdownListView *dropdownListView) {
        NSString *msgString = [NSString stringWithFormat:
                               @"selected name:%@  id:%@  index:%ld"
                               , dropdownListView.selectedItem.itemName
                               , dropdownListView.selectedItem.itemId
                               , dropdownListView.selectedIndex];
        
        msgLabel.text = msgString;
    }];
    
    
    
}



@end
