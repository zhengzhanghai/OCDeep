//
//  NewsTableViewController.m
//  MVC_Apple_Demo
//
//  Created by 郑章海 on 2020/7/23.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "NewsTableViewController.h"
#import "News.h"

@interface NewsTableViewController ()

@property (nonatomic, strong) NSMutableArray *datas;

@end

@implementation NewsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadDatas];
    [self.tableView reloadData];
}

- (void)loadDatas {
    _datas = [NSMutableArray array];
    for (int i = 0; i < 20; i++) {
        News *news = [[News alloc] init];
        news.title = [NSString stringWithFormat:@"title__%d", i];
        [_datas addObject:news];
    }
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    News *news = _datas[indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = news.title;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%s", __func__);
}

@end
