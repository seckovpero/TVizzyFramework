//
//  FantasticView.h
//  RWPickFlavor
//
//  Created by AspidaMacBook on 13/03/2018.
//  Copyright © 2018 AspidaMacBook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FantasticView : UIView

@property (nonatomic,strong) UILabel *label1;
@property (nonatomic,strong) UILabel *label2;
@property (nonatomic,assign) int counter;
@property (nonatomic,strong) NSMutableArray<UIColor *> *colors;

@property (nonatomic,strong) NSTimer *timer;

-(void)changeColors;
-(void)stopChangingColors;
-(int)sumOfTwoNumbers:(int)first second:(int)second;
@end
