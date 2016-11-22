//
//  ZGImageView.m
//  UIImageViewCrop
//
//  Created by HYG_IOS on 2016/11/22.
//  Copyright © 2016年 magic. All rights reserved.
//

#import "ZGImageView.h"

@implementation ZGImageView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    // 获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 画圆
    CGContextAddEllipseInRect(ctx, rect);
    // 剪切
    CGContextClip(ctx);
    // 绘图
    UIImage * image = [UIImage imageNamed:@"sonice.jpg"];
    [image drawInRect:rect blendMode:kCGBlendModeOverlay alpha:1.0f];
}


@end
