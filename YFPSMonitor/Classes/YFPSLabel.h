//
//  YFPSLabel.h
//  FPSMonitor_Example
//
//  Created by Eafy on 2021/5/14.
//  Copyright © 2021 eaffy. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YFPSLabel : UILabel

// 当多个view添加该单例view时,只有最后一次添加的视图有效,所以不能设置成单例
//+ (instancetype)sharedLabel;

// 其他初始化方法禁掉
//+ (instancetype)new __attribute__((unavailable("replace with 'sharedLabel'")));
//+ (instancetype)alloc __attribute__((unavailable("replace with 'sharedLabel'")));
//+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable("replace with 'sharedLabel'")));
//+ (id)copyWithZone:(struct _NSZone *)zone __attribute__((unavailable("replace with 'sharedLabel'")));
//+ (id)mutableCopyWithZone:(struct _NSZone *)zone __attribute__((unavailable("replace with 'sharedLabel'")));

@end

NS_ASSUME_NONNULL_END
