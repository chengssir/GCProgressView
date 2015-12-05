//
//  GCPrigressView.m
//  GCProgressView
//
//  Created by chengs on 15/12/3.
//  Copyright © 2015年 chengs. All rights reserved.
//

#import "GCPrigressView.h"

@implementation GCPrigressView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)setProgress:(CGFloat)progress
{
    _progress = progress;
    
    if (progress >= 1.0) {
        [self removeFromSuperview];
    } else {
        [self setNeedsDisplay];
    }
    
}




- (void)drawRect:(CGRect)rect {

    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGFloat xCenter = rect.size.width * 0.5;
    CGFloat yCenter = rect.size.height * 0.5;
    
    CGFloat radius = MIN(rect.size.width * 0.5, rect.size.height * 0.5) - 10;
    
    // 背景遮罩
    [[UIColor colorWithRed:240 green:240 blue:240 alpha:1] set];
    CGFloat w = radius * 2 + 5;
    CGFloat h = w;
    CGFloat x = (rect.size.width - w) * 0.5;
    CGFloat y = (rect.size.height - h) * 0.5;
    CGContextAddEllipseInRect(ctx, CGRectMake(x, y, w, h));
//    CGContextFillPath(ctx);//填充
    CGContextStrokePath(ctx);//中空
    
    // 进程圆
    CGContextSetLineWidth(ctx, 1);
    CGContextMoveToPoint(ctx, xCenter, yCenter);
    CGContextAddLineToPoint(ctx, xCenter, 0);
    CGFloat to = - M_PI * 0.5 + self.progress * M_PI * 2 + 0.001; // 初始值
    CGContextAddArc(ctx, xCenter, yCenter, radius, - M_PI * 0.5, to, 1);
    CGContextClosePath(ctx);
    
    CGContextFillPath(ctx);
}


@end
