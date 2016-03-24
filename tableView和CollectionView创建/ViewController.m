//
//  ViewController.m
//  tableView和CollectionView创建
//
//  Created by owen on 16/3/24.
//  Copyright © 2016年 owen. All rights reserved.
//

#import "ViewController.h"
#import "DTableViewController.h"
#import "DCollectionViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
}


#pragma mark -- 进入tableVie
- (IBAction)tabBtnClick:(id)sender {
    
    DTableViewController *tableVc = [[DTableViewController alloc]init];
    [self.navigationController pushViewController:tableVc animated:YES];
}




#pragma mark -- 进入collectionView
- (IBAction)colBtnClick:(id)sender {
    
    DCollectionViewController *collectVc = [[DCollectionViewController alloc]init];
    [self.navigationController pushViewController:collectVc animated:YES];
}
@end
