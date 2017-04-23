//
//  MainTableViewController.m
//  Webimage
//
//  Created by daniel on 2017/4/19.
//  Copyright © 2017年 Daniel. All rights reserved.
//

#import "MainTableViewController.h"
#import "CollectionViewController.h"

@interface MainTableViewController ()

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    if (indexPath.section == 0) {
        switch (indexPath.row) {
            case 0:
                cell.textLabel.text = @"layer";
                break;
            case 1:
                cell.textLabel.text = @"rasterize";
                break;
            case 2:
                cell.textLabel.text = @"image";
                break;
            case 3:
                cell.textLabel.text = @"image cache";
                break;
            default:
                break;
        }
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *identifier = nil;
    if (indexPath.section == 0) {
        switch (indexPath.row) {
            case 0:
                identifier = @"layer";
                break;
            case 1:
                identifier = @"rasterize";
                break;
            case 2:
                identifier = @"image";
                break;
            case 3:
                identifier = @"imageCache";
                break;
            default:
                break;
        }
    }
    
    UICollectionViewFlowLayout *flowLayout = [UICollectionViewFlowLayout new];
    CollectionViewController *controller = [[CollectionViewController alloc] initWithCollectionViewLayout:flowLayout];
    controller.reuseIdentifier = identifier;
    [self.navigationController pushViewController:controller animated:NO];
}

@end
