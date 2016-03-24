//
//  DTableViewController.m
//  tableView和UICollectionView 多选
//
//  Created by owen on 16/3/24.
//  Copyright © 2016年 owen. All rights reserved.
//

#import "DTableViewController.h"

@interface DTableViewController ()


@property (nonatomic,strong) UITableView *DtableView;

@end

@implementation DTableViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    self.title= @"tableView布局";
    
    [self.view addSubview:self.DtableView];
}

#pragma mark -- 初始化tableView
-(UITableView *)DtableView{
    
    if (!_DtableView) {
        
        _DtableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
        self.DtableView.delegate = self;
        self.DtableView.dataSource =self;
//        self.DtableView.backgroundColor = [UIColor clearColor];
    }
    return _DtableView;
}

#pragma mark -- 行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 30;
}

#pragma mark -- section组数
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 5;
}

#pragma mark -- tableViewCell内容
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *iDs = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:iDs];
    if (!cell) {
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:iDs];
        cell.backgroundColor = [UIColor grayColor];
    }
    
    return cell;
}

#pragma mark -- 设置头部
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{

    UIView *headerView = [[UIView alloc]init];
    headerView.backgroundColor = [UIColor blackColor];
    return headerView;
}

#pragma mark -- 头部高度
-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForHeaderInSection:(NSInteger)section{
    
    return 40;
}

#pragma mark -- 设置尾部
-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{

    UIView *footerView = [[UIView alloc]init];
    footerView.backgroundColor = [UIColor purpleColor];
    return footerView;
}

#pragma mark -- 尾部高度
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{

    return 44;
}

#pragma mark -- 选中事件
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    NSLog(@"选中了:%ld",indexPath.row);
}













@end
