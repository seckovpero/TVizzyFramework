//
//  NotificationVideoBL.h
//  TVizzyFramework
//
//  Created by AspidaMacBook on 20/03/2018.
//  Copyright © 2018 AspidaMacBook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotificationVideoBL : NSObject

// Use this function to present the video in the view provided as MainView
// In the payload of the notification you have info about the links of the videos that we will present here
// User info is the dictionary from the notification (you can find this dictionary in didRecieveNotification in the notification object) notification.request.content.userInfo
-(void)playVideoOnMainView:(UIView*)view userInfo:(NSDictionary*)userInfo;

-(CGSize)getThePrefferedSize:(UIView*)view;
@end
