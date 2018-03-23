//
//  SettingsViewController.m
//  TVizzyTest2
//
//  Created by AspidaMacBook on 22/03/2018.
//  Copyright © 2018 AspidaMacBook. All rights reserved.
//

#import "SettingsView.h"
#import <Masonry/Masonry.h>

@interface SettingsView () <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSMutableArray<NSString *> *list;
@property (weak,nonatomic) UIColor *color;
@end

@implementation SettingsView

-(instancetype)initWithListElements:(NSMutableArray *)list backgroundColor:(UIColor*)backgroundColor {
    self = [super init];
    if (self) {
        self.list = list;
        self.color = backgroundColor;
        [self setupViews];
        [self setupConstraints];
    }
    return self;
}


-(void)setupViews {
    _tableView = [[UITableView alloc] init];
    _tableView.backgroundColor = _color;
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.tableFooterView = [[UIView alloc] init];
    [_tableView registerClass:[UITableViewCell self] forCellReuseIdentifier:@"cell"];
    _tableView.separatorColor = [UIColor clearColor];
    [self addSubview:_tableView];
}

-(void)setupConstraints {
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
}

#pragma mark TableViewDatasource and Delegate functions

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _list.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = _color;
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.textLabel.text = _list[indexPath.row];
    return  cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [_delegate menuItemTouched:(int)indexPath.row];
    
}

@end

