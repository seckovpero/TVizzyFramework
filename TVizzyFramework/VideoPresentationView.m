//
//  VideoPresentationView.m
//  VideoTestProject
//
//  Created by AspidaMacBook on 20/03/2018.
//  Copyright © 2018 AspidaMacBook. All rights reserved.
//

#import "VideoPresentationView.h"
@import UserNotifications;

@implementation VideoPresentationView


-(void)setupWithFirstUrl:(NSString*)url1 secondUrl:(NSString*)secondUrl thirdUrl:(NSString*)thirdUrl {
    self.backgroundColor = [UIColor blackColor];
    _firstItem = [[AVPlayerItem alloc] initWithURL:[NSURL URLWithString:url1]];
    _secondItem = [[AVPlayerItem alloc] initWithURL:[NSURL URLWithString:secondUrl]];
    _thirdItem = [[AVPlayerItem alloc] initWithURL:[NSURL URLWithString:thirdUrl]];
    
    _player = [[AVPlayer alloc] initWithPlayerItem:_firstItem];
    _playerLayer = [[AVPlayerLayer alloc] init];
    _playerLayer.frame = self.frame;
    _playerLayer.player = _player;
    _player1 = [[AVPlayer alloc] initWithPlayerItem:_secondItem];
    _player1Layer = [[AVPlayerLayer alloc] init];
    _player1Layer.frame = self.frame;
    _player1Layer.player = _player1;
    _player2 = [[AVPlayer alloc] initWithPlayerItem:_thirdItem];
    _player2Layer = [[AVPlayerLayer alloc] init];
    _player2Layer.frame = self.frame;
    _player2Layer.player = _player2;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(firstItemDidFinishPlaying) name:AVPlayerItemDidPlayToEndTimeNotification object:_firstItem];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(secondItemDidFinishPlaying) name:AVPlayerItemDidPlayToEndTimeNotification object:_secondItem];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(thirdItemDidFinishPlaying) name:AVPlayerItemDidPlayToEndTimeNotification object:_thirdItem];
    [self.layer addSublayer:_playerLayer];
    [_player play];
}

-(void)firstItemDidFinishPlaying {
    self.layer.sublayers = nil;
   [self.layer addSublayer:_player1Layer];
    [_player1 play];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:AVPlayerItemDidPlayToEndTimeNotification object:_firstItem];
}

-(void)secondItemDidFinishPlaying {
    self.layer.sublayers = nil;
    [self.layer addSublayer:_player2Layer];
    [_player2 play];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:AVPlayerItemDidPlayToEndTimeNotification object:_secondItem];
}

-(void)thirdItemDidFinishPlaying {
    [_player2 pause];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:AVPlayerItemDidPlayToEndTimeNotification object:_thirdItem];
}

@end
