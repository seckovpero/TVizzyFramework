//
//  NewsFeedTableViewCell.m
//  IntroVideo
//
//  Created by Miki Dimitrov on 3/22/18.
//  Copyright © 2018 Miki Dimitrov. All rights reserved.
//

#import "NewsFeedTableViewCell.h"
#import "Masonry.h"



@implementation NewsFeedTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupViews];
        [self setupConstraints];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

-(void)setupViews {
    self.backgroundColor = [UIColor clearColor];
    _holderView = [[UIView alloc]init];
    _channelView = [[UIView alloc]init];
   // _channelView.backgroundColor = [UIColor redColor];
    _resultView = [[UIView alloc]init];
   // _resultView.backgroundColor = [UIColor yellowColor];
    _borderView = [[UIView alloc]init];
    _borderView.backgroundColor = [UIColor grayColor];
    [_holderView addSubview:_channelView];
    [_holderView addSubview:_resultView];
    
    _channelImageView = [[UIImageView alloc] init];
    _channelImageView.image = [UIImage imageNamed:@"uefa_logo"];
    _channelImageView.contentMode = UIViewContentModeScaleAspectFit;
    [_holderView addSubview:_channelImageView];
    
    _channelNameLabel = [self createLabelWith:@"Champions League" andAligment:true];
    
    _mainImageView = [[UIImageView alloc] init];
    _mainImageView.image = [UIImage imageNamed:@"champions"];
    //_mainImageView.contentMode = UIViewContentModeScaleAspectFit;
    [_holderView addSubview:_mainImageView];
    
    _highlightLabel = [self createLabelWith:@"Goal Atletico (Griezman) min 5" andAligment:false];
    _resultLabel = [self createLabelWith:@"FC Bayern - Atletico Madrid 0:1" andAligment:false];
    
    _favoriteButton = [[UIButton alloc]init];
    [_favoriteButton setImage:[UIImage imageNamed:@"favoriteEmpty_icon"] forState:UIControlStateNormal];
    [_holderView addSubview:_favoriteButton];
    
    _shareButton = [[UIButton alloc]init];
    [_shareButton setImage:[UIImage imageNamed:@"share_icon"] forState:UIControlStateNormal];
    [_holderView addSubview:_shareButton];
    
    [self addSubview:_holderView];
    [self addSubview:_borderView];
    
}

-(void)setupConstraints {
    
    double size = self.frame.size.height/8 + 60;
    
    [_holderView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.equalTo(self);
        make.bottom.equalTo(self).offset(-3);
    }];
    
    [_borderView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self);
        make.top.equalTo(_holderView.mas_bottom);
        make.bottom.equalTo(self);
    }];
    
    [_channelView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.equalTo(_holderView);
        make.height.equalTo(_holderView.mas_height).dividedBy(8);
    }];
    
    [_channelImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_channelView).offset(30);
        make.centerY.equalTo(_channelView.mas_centerY);
        make.height.width.equalTo(_channelView.mas_height).dividedBy(1.5);
    }];
    
    [_channelNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_channelImageView.mas_right).offset(10);
        make.top.equalTo(_channelView);
        make.height.equalTo(_channelView);
        make.right.equalTo(_channelView).offset(-size);
    }];
    
    [_resultView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.right.equalTo(_holderView);
        make.height.equalTo(_holderView.mas_height).dividedBy(8);
    }];
    
    [_mainImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(_holderView);
        make.top.equalTo(_channelView.mas_bottom);
        make.bottom.equalTo(_resultView.mas_top);
    }];
    
    [_shareButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self).offset(-10);
        make.height.width.equalTo(_resultView.mas_height).dividedBy(1.5);
        make.centerY.equalTo(_resultView.mas_centerY);
    }];
    
    [_favoriteButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(_shareButton.mas_left).offset(-10);
        make.height.width.centerY.equalTo(_shareButton);
    }];
    
    [_highlightLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_resultView);
        make.left.equalTo(_resultView);
        make.right.equalTo(_favoriteButton.mas_right);
        make.height.equalTo(_resultView.mas_height).dividedBy(2);
    }];
    
    [_resultLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(_resultView);
        make.left.equalTo(_resultView);
        make.right.equalTo(_favoriteButton.mas_right);
        make.height.equalTo(_resultView.mas_height).dividedBy(2);
    }];
    
}

-(void)favoriteButtonAction {
    [_favoriteButton setImage:[UIImage imageNamed:@"favoriteEmpty_icon"] forState:UIControlStateNormal];
}

-(UILabel*)createLabelWith:(NSString*)text andAligment:(Boolean*)center {
    UILabel *label = [[UILabel alloc]init];
    label.text = text;
    label.textColor = [UIColor blackColor];
    label.numberOfLines = 0;
    if (center) {
        label.textAlignment = NSTextAlignmentCenter;
    } else {
        label.textAlignment = NSTextAlignmentLeft;
    }
    [_holderView addSubview:label];
    return label;
}

@end
