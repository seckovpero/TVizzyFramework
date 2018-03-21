//
//  NotificationVideoBL.m
//  TVizzyFramework
//
//  Created by AspidaMacBook on 20/03/2018.
//  Copyright © 2018 AspidaMacBook. All rights reserved.
//

#import "NotificationVideoBL.h"
#import "VideoPresentationView.h"

@implementation NotificationVideoBL

-(void)playVideoOnMainView:(UIView*)view userInfo:(NSDictionary*)userInfo {
    
    NSDictionary *aps = userInfo[@"aps"];
    NSDictionary *locArgs = aps[@"locArgs"];
    NSString *firstUrl = locArgs[@"commercial1Url"];
    NSString *secondUrl = locArgs[@"videoUrl"];
    NSString *thirdUrl = locArgs[@"commercial2Url"];
    if ([secondUrl hasSuffix:@"manifest"]) {
        secondUrl = [NSString stringWithFormat:@"%@(format=m3u8-aapl-v3)",secondUrl];
    }
    
    VideoPresentationView *videoView = [[VideoPresentationView alloc] initWithFrame:view.frame];
    [videoView setupWithFirstUrl:firstUrl secondUrl:secondUrl thirdUrl:thirdUrl];
    [view addSubview:videoView];
}
@end
