//
//  NavigationView.h
//  TVizzyTest
//
//  Created by AspidaMacBook on 22/03/2018.
//  Copyright © 2018 AspidaMacBook. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NavigationViewDelegate <NSObject>

-(void)leftButtonTouched;
-(void)rightButtonTouched;

@end

@interface NavigationView : UIView

@property(nonatomic,strong) UIButton *leftMenuButton;
@property (nonatomic,strong) UIButton *rightMenuButton;
@property (nonatomic,strong) UIImageView *appLogo;
@property (weak,nonatomic) id<NavigationViewDelegate> delegate;

-(instancetype)initWithLeftImage:(UIImage*)leftImage rightImage:(UIImage*)rightImage logoImage:(UIImage*)logoImage backgroundColor:(UIColor*)backgroundColor;
@end
