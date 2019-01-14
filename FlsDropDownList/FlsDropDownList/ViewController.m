//
//  ViewController.m
//  FlsDropDownList
//
//  Created by 天立泰 on 2019/1/14.
//  Copyright © 2019年 天立泰. All rights reserved.
//

#import "ViewController.h"
#import "EBDController.h"
#import "JJOptionController.h"
#import "LMJDropdownMenuController.h"


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic,strong)NSArray * dataArray;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.tableFooterView = [UIView new];
    self.dataArray = @[@"EBDropdownList",@"JJOptionView",@"LMJDropdownMenu"];
}
#pragma mark tableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * cell = [[UITableViewCell alloc] init];
    
    cell.textLabel.text = self.dataArray[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:{
            EBDController * vc = [[EBDController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 1:{
            JJOptionController * vc = [[JJOptionController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            
            break;
        case 2:{
            LMJDropdownMenuController * vc = [[LMJDropdownMenuController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
        default:
            break;
    }
}

@end
