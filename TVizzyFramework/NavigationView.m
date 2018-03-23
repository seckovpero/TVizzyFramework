//
//  NavigationView.m
//  TVizzyTest
//
//  Created by AspidaMacBook on 22/03/2018.
//  Copyright © 2018 AspidaMacBook. All rights reserved.
//

#import "NavigationView.h"
#import <Masonry.h>

@implementation NavigationView

-(instancetype)initWithLeftImage:(UIImage *)leftImage rightImage:(UIImage *)rightImage logoImage:(UIImage *)logoImage backgroundColor:(UIColor *)backgroundColor {
    self = [super init];
    if (self) {
        [self setupViewsWithLeftImage:leftImage rightImage:rightImage logoImage:logoImage backgroundColor:backgroundColor];
        [self setupConstraints];
    }
    return self;
}

-(void)setupViewsWithLeftImage:(UIImage *)leftImage rightImage:(UIImage *)rightImage logoImage:(UIImage *)logoImage backgroundColor:(UIColor *)backgroundcolor{
    self.backgroundColor = backgroundcolor;
    _leftMenuButton = [self createButtonWithImage:leftImage];
    [_leftMenuButton addTarget:self action:@selector(leftButtonTouched) forControlEvents:UIControlEventTouchUpInside];
    
    _rightMenuButton = [self createButtonWithImage:rightImage];
    [_rightMenuButton addTarget:self action:@selector(rightButtonTouched) forControlEvents:UIControlEventTouchUpInside];
    _appLogo = [[UIImageView alloc] init];
    _appLogo.image = logoImage;
    _appLogo.contentMode = UIViewContentModeScaleAspectFit;
    
    [self addSubview:_leftMenuButton];
    [self addSubview:_rightMenuButton];
    [self addSubview:_appLogo];
}

-(void)setupConstraints {
    [_leftMenuButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self);
        make.left.equalTo(self).offset(15);
        make.width.height.equalTo(self.mas_height).dividedBy(2);
    }];
    [_rightMenuButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self);
        make.right.equalTo(self).offset(-15);
        make.width.height.equalTo(self.mas_height).dividedBy(2);
    }];
    [_appLogo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.width.equalTo(self).dividedBy(3);
        make.height.equalTo(self).multipliedBy(0.6);
    }];
}

-(UIButton*)createButtonWithImage:(UIImage *)image {
    UIButton *button = [[UIButton alloc] init];
    [button setImage:image forState:UIControlStateNormal];
    return  button;
}

-(void)leftButtonTouched {
    [_delegate leftButtonTouched];
}

-(void)rightButtonTouched {
    [_delegate rightButtonTouched];
}

@end
