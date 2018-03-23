//
//  WebView.h
//  TVizzyTest
//
//  Created by AspidaMacBook on 21/03/2018.
//  Copyright © 2018 AspidaMacBook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebView : UIView
@property (nonatomic,strong) UIWebView *webView;
@property (nonatomic,strong) NSString *html;

-(instancetype)initWithHtml:(NSString *)html;
@end
