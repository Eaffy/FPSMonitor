//
//  YFDraggableWindow.m
//  YFPSMonitor
//
//  Created by Eafy on 2021/5/16.
//  Copyright © 2021 eaffy. All rights reserved.
//

#define WINDOW_LEVEL_MONITOR 100000

#import "YFDraggableWindow.h"

@implementation YFDraggableWindow

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.windowLevel = WINDOW_LEVEL_MONITOR;
    }
    return self;
}

@end
