//
//  SDBallProgressView.h
//  SDProgressView
//
//  Created by aier on 15-2-19.
//  Copyright (c) 2015年 GSD. All rights reserved.
//

#import <UIKit/UIKit.h>
#define SDProgressViewFontScale (MIN(self.frame.size.width, self.frame.size.height) / 100.0)

@interface GCBallProgressView : UIView

@property (nonatomic, assign) CGFloat progress;

@end
