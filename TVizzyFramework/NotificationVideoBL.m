//
//  NotificationVideoBL.m
//  TVizzyFramework
//
//  Created by AspidaMacBook on 20/03/2018.
//  Copyright © 2018 AspidaMacBook. All rights reserved.
//

#import "NotificationVideoBL.h"
#import "VideoPresentationView.h"


#define FLMainScreen [UIScreen mainScreen]
#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPAD_10_5 (IS_IPAD && (([FLMainScreen bounds].size.height == 1112) || ([FLMainScreen bounds].size.height == 834)))
#define IS_IPAD_9_7 (IS_IPAD && (([FLMainScreen bounds].size.height == 1024.00) || ([FLMainScreen bounds].size.height == 768.00)))
#define IS_IPHONE_5 (!IS_IPAD && [FLMainScreen bounds].size.height == 568)

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

-(CGSize)getThePrefferedSize:(UIView*)view {
    if (IS_IPAD) {
        if ([FLMainScreen bounds].size.height < [FLMainScreen bounds].size.width) {
            if (IS_IPAD_10_5) {
                return CGSizeMake(0, view.frame.size.height*0.375);
            } else if (IS_IPAD_9_7) {
                return CGSizeMake(0, view.frame.size.height*0.41);
            } else {
                return CGSizeMake(0, view.frame.size.height*0.305);
            }
        } else {
            if (IS_IPAD_10_5) {
                return CGSizeMake(0, view.frame.size.width*0.375);
            } else if (IS_IPAD_9_7) {
                return CGSizeMake(0, view.frame.size.width*0.41);
            } else {
                return CGSizeMake(0, view.frame.size.width*0.305);
            }
        }
    } else {
        return CGSizeMake(0, view.frame.size.width*0.54);
    }
}
@end
