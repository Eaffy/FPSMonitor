//
//  YFPSMonitor.h
//  FPSMonitor_Example
//
//  Created by Eafy on 2021/5/14.
//  Copyright © 2021 eaffy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YFPSMonitor : NSObject

/// 显示FPS工具到屏幕最上方
+ (void)show;

/// 只有在debug模式下显示
+ (void)showOnlyInDebugMode;

/// 隐藏FPS工具
+ (void)hide;

/// 获取一个FPSLabel
+ (UILabel *)FPSLabel;

@end

NS_ASSUME_NONNULL_END
