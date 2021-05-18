//
//  YFPSMonitor.m
//  FPSMonitor_Example
//
//  Created by Eafy on 2021/5/14.
//  Copyright © 2021 eaffy. All rights reserved.
//

#import "YFPSMonitor.h"
#import "YFDraggableWindow.h"
#import "YFPSLabel.h"

static YFDraggableWindow *_containerWindow = nil;
static YFPSLabel *_FPSlabel = nil;

@implementation YFPSMonitor

+ (void)setUpUI {
    _FPSlabel = [YFPSLabel new];
    CGFloat x = 8 + 10;
    CGFloat y = [UIScreen mainScreen].bounds.size.height - 8 - 20;
    CGRect windowFrame = CGRectMake(x, y, _FPSlabel.bounds.size.width, _FPSlabel.bounds.size.height);
    _containerWindow = [[YFDraggableWindow alloc] initWithFrame:windowFrame];
    [_containerWindow addSubview:_FPSlabel];
    _containerWindow.rootViewController = [UIViewController new];
    [_containerWindow makeKeyAndVisible];
}

/// 显示FPS工具到屏幕最上方
+ (void)show {
    // 创建window,添加FPSLabel
    [self setUpUI];
    [_containerWindow setAlpha:1];
}

+ (void)showOnlyInDebugMode {
#ifdef DEBUG
    [self show];
#else
#endif
}

/// 隐藏FPS工具
+ (void)hide {
    if (_containerWindow) {
        [_containerWindow setAlpha:0];
        [_containerWindow removeFromSuperview];
    }
}

/// 获取一个FPSLabel
+ (UILabel *)FPSLabel {
    return [YFPSLabel new];
}

@end
