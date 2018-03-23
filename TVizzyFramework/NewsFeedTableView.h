//
//  NewsFeedTableView.h
//  IntroVideo
//
//  Created by Miki Dimitrov on 3/22/18.
//  Copyright © 2018 Miki Dimitrov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsFeedTableView : UIView <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UITableView *newsFeedTableView;
@property (nonatomic,assign) NSInteger counter;

@end

