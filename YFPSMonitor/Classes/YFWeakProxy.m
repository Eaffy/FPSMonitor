//
//  YFWeakProxy.m
//  
//
//  Created by Eafy on 2021/5/18.
//

#import "YFWeakProxy.h"

@implementation YFWeakProxy

- (instancetype)initWithTarget:(id)target {
    _target = target;
    return self;
}

+ (instancetype)proxyWithTarget:(id)target {
    return [[YFWeakProxy alloc] initWithTarget: target];
}

- (id)forwardingTargetForSelector:(SEL)selector {
    return _target;
}

@end
