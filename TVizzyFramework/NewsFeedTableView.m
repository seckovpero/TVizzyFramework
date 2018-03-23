//
//  NewsFeedTableView.m
//  IntroVideo
//
//  Created by Miki Dimitrov on 3/22/18.
//  Copyright © 2018 Miki Dimitrov. All rights reserved.
//

#import "NewsFeedTableView.h"
#import <Masonry/Masonry.h>
#import "NewsFeedTableViewCell.h"

@implementation NewsFeedTableView 

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupViews];
        [self setupConstraints];
    }
    return self;
}

-(void)setupViews {
    _counter = 0;
    self.backgroundColor = [UIColor whiteColor];
    
    _newsFeedTableView = [[UITableView alloc]init];
    _newsFeedTableView.backgroundColor = [UIColor clearColor];
    [_newsFeedTableView registerClass:[NewsFeedTableViewCell self] forCellReuseIdentifier:@"cell"];
    _newsFeedTableView.delegate = self;
    _newsFeedTableView.dataSource = self;
    _newsFeedTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    _newsFeedTableView.separatorColor = [UIColor clearColor];
    _newsFeedTableView.bounces = NO;
    
    [self addSubview:_newsFeedTableView];
}

-(void)setupConstraints {
    [self.newsFeedTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return self.frame.size.height/2;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NewsFeedTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    [cell.favoriteButton addTarget:self action:@selector(playButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    return cell;
}

-(void)playButtonAction:(UIButton*)sender {
    _counter ++;
    if (_counter % 2 == 1) {
        [sender setImage:[UIImage imageNamed:@"favoriteFull_icon"]forState:UIControlStateNormal];
    } else {
        [sender setImage:[UIImage imageNamed:@"favoriteEmpty_icon"]forState:UIControlStateNormal];
    }
}



@end
