//
//  WebViewBL.h
//  TVizzyFramework
//
//  Created by AspidaMacBook on 21/03/2018.
//  Copyright © 2018 AspidaMacBook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface WebViewBL : NSObject

// When you call this function webView with specific type is added to yourView
-(void)presentWebViewIn:(UIView*)view type:(NSString*)type;
@end
