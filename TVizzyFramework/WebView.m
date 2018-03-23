//
//  WebView.m
//  TVizzyTest
//
//  Created by AspidaMacBook on 21/03/2018.
//  Copyright © 2018 AspidaMacBook. All rights reserved.
//

#import "WebView.h"
#import <Masonry.h>

@implementation WebView

-(instancetype)initWithHtml:(NSString *)html {
    self = [super init];
    if (self) {
        self.html = html;
        [self setupViews];
        [self setupConstraints];
    }
    return self;
}

-(void)setupViews {
    self.webView = [[UIWebView alloc] init];
    [self.webView loadHTMLString:_html baseURL:nil];

    [self addSubview:self.webView];
}

-(void)setupConstraints {
    [_webView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
}
@end
