//
//  YFWeakProxy.h
//  
//
//  Created by Eafy on 2021/5/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YFWeakProxy : NSObject

@property (nonatomic, weak, nullable, readonly) id target;

- (instancetype)initWithTarget:(id)target;
+ (instancetype)proxyWithTarget:(id)target;

@end

NS_ASSUME_NONNULL_END
