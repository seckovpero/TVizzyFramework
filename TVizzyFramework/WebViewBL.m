//
//  WebViewBL.m
//  TVizzyFramework
//
//  Created by AspidaMacBook on 21/03/2018.
//  Copyright © 2018 AspidaMacBook. All rights reserved.
//

#import "WebViewBL.h"
#import "WebView.h"

@implementation WebViewBL

-(void)presentWebViewIn:(UIView*)view type:(NSString*)type {
    NSString *html;
    
    if ([type isEqualToString:@"1"]) {
        html = @"<!DOCTYPE html><html><body><h1>TYPE 1<h1><h1>This is heading 1</h1><h2>This is heading 2</h2><h3>This is heading 3</h3><h4>This is heading 4</h4><h5>This is heading 5</h5><h6>This is heading 6</h6></body></html>";
    } else {
        html = @"<!DOCTYPE html><html><body><h1>TYPE 2<h1><h1>This is heading 1</h1><h2>This is heading 2</h2><h3>This is heading 3</h3><h4>This is heading 4</h4><h5>This is heading 5</h5><h6>This is heading 6</h6></body></html>";
    }
    [view addSubview:[[WebView alloc] initWithHtml:html andFrame:view.frame]];
}

@end
