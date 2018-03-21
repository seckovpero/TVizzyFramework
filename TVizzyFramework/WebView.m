//
//  WebView.m
//  TVizzyTest
//
//  Created by AspidaMacBook on 21/03/2018.
//  Copyright © 2018 AspidaMacBook. All rights reserved.
//

#import "WebView.h"

@implementation WebView

-(instancetype)initWithHtml:(NSString *)html andFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.html = html;
        [self setupViews];
    }
    return self;
}

-(void)setupViews {
    self.webView = [[UIWebView alloc] init];
    self.webView.frame = self.frame;
    [self.webView loadHTMLString:_html baseURL:nil];
    self.webView.backgroundColor = [UIColor clearColor];

    [self addSubview:self.webView];
}
@end
