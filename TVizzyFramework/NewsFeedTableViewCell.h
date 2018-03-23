//
//  NewsFeedTableViewCell.h
//  IntroVideo
//
//  Created by Miki Dimitrov on 3/22/18.
//  Copyright © 2018 Miki Dimitrov. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface NewsFeedTableViewCell : UITableViewCell

@property (nonatomic, strong) UIView *holderView;
@property (nonatomic, strong) UIView *borderView;
@property (nonatomic, strong) UIView *channelView;
@property (nonatomic, strong) UIView *resultView;

@property (nonatomic, strong) UIImageView *channelImageView;
@property (nonatomic, strong) UILabel *channelNameLabel;

@property (nonatomic, strong) UIImageView *mainImageView;

@property (nonatomic, strong) UILabel *highlightLabel;
@property (nonatomic, strong) UILabel *resultLabel;

@property (nonatomic, strong) UIButton *favoriteButton;
@property (nonatomic, strong) UIButton *shareButton;

-(void)favoriteButtonAction;

@end




