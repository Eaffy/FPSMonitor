//
//  YFPSLabel.m
//  FPSMonitor_Example
//
//  Created by Eafy on 2021/5/14.
//  Copyright © 2021 eaffy. All rights reserved.
//

#import "YFPSLabel.h"
#import "YFWeakProxy.h"

#define kSize CGSizeMake(55, 20)

// 适合作为一个单例实现
@implementation YFPSLabel {
    CADisplayLink *_link;
    NSTimeInterval _lastTimeStamp;
    NSUInteger _count;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (frame.size.width == 0 && frame.size.height == 0) {
        frame.size = kSize;
    }
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.cornerRadius = 5;
        self.clipsToBounds = YES;
        self.textAlignment = NSTextAlignmentCenter;
        self.userInteractionEnabled = NO;
        self.backgroundColor = [UIColor colorWithWhite:0.000 alpha:0.700];
        
        _link = [CADisplayLink displayLinkWithTarget:[YFWeakProxy proxyWithTarget:self] selector:@selector(tick:)];
        [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
        _lastTimeStamp = 0;
    }
    return self;
}

- (void)tick:(CADisplayLink *)link {
    if (_lastTimeStamp == 0) {
        _lastTimeStamp = link.timestamp;
        return;
    }
    
    NSTimeInterval duration = link.timestamp - _lastTimeStamp;
    if (duration < 1) {
        _count ++;
        return;
    }
    
    int fps = (int)round(_count / duration);
    _count = 0;
    _lastTimeStamp = link.timestamp;
    
    CGFloat progress = fps / 60.0;
    UIColor *color = [UIColor colorWithHue:0.27 * (progress - 0.2) saturation:1 brightness:0.9 alpha:1];
    
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%d FPS",(int)round(fps)]];
    [text addAttributes:@{
        NSFontAttributeName: [UIFont fontWithName:@"Menlo" size:14],
        NSForegroundColorAttributeName: color
    } range:NSMakeRange(0, text.length - 3)];
    [text addAttributes:@{
        NSFontAttributeName: [UIFont fontWithName:@"Courier" size:4]
    } range:NSMakeRange(text.length - 4, 1)];
    [text addAttributes:@{
        NSFontAttributeName: [UIFont fontWithName:@"Menlo" size:14],
        NSForegroundColorAttributeName: [UIColor whiteColor]
    } range:NSMakeRange(text.length - 3, 3)];
    self.attributedText = text;
}

- (void)dealloc
{
    [_link invalidate];
}

@end
