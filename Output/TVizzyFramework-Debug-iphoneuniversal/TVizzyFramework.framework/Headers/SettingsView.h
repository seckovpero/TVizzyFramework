//
//  SettingsView.h
//  TVizzyTest2
//
//  Created by AspidaMacBook on 22/03/2018.
//  Copyright © 2018 AspidaMacBook. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SettingsViewDelegate <NSObject>
-(void)menuItemTouched:(int)index;
@end

@interface SettingsView : UIView
@property (weak,nonatomic) id<SettingsViewDelegate> delegate;
-(instancetype)initWithListElements:(NSMutableArray *)list backgroundColor:(UIColor*)backgroundColor;
@end
