//
//  VideoPresentationView.h
//  VideoTestProject
//
//  Created by AspidaMacBook on 20/03/2018.
//  Copyright © 2018 AspidaMacBook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface VideoPresentationView : UIView

@property (nonatomic,strong) AVPlayer *player;
@property (nonatomic,strong) AVPlayer *player1;
@property (nonatomic,strong) AVPlayer *player2;

@property (nonatomic,strong) AVPlayerLayer *playerLayer;
@property (nonatomic,strong) AVPlayerLayer *player1Layer;
@property (nonatomic,strong) AVPlayerLayer *player2Layer;

@property (nonatomic,strong) AVPlayerItem *firstItem;
@property (nonatomic,strong) AVPlayerItem *secondItem;
@property (nonatomic,strong) AVPlayerItem *thirdItem;

-(void)setupWithFirstUrl:(NSString*)url1 secondUrl:(NSString*)secondUrl thirdUrl:(NSString*)thirdUrl;
@end
