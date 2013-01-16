//
//  QTMyButton.m
//  MoveButton
//
//  Created by 杨 宏强 on 12-12-30.
//  Copyright (c) 2012年 yanghongqiang. All rights reserved.
//

#import "QTMyButton.h"

@implementation QTMyButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
//手指按下开始触摸
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //获得触摸在按钮的父视图中的坐标
    if (UIControlEventTouchUpInside) {
        [self addTarget:self action:@selector(alert) forControlEvents:UIControlEventTouchUpInside];
    }
    UITouch *touch = [touches anyObject];
    CGPoint currentPoint = [touch locationInView:self.superview];
    
    xDistance =  self.center.x - currentPoint.x;
    yDistance = self.center.y - currentPoint.y;
    
}
//手指按住移动过程
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
//    if(isDrag)
//    {
        //获得触摸在按钮的父视图中的坐标
        UITouch *touch = [touches anyObject];
        CGPoint currentPoint = [touch locationInView:self.superview];
        
        //移动按钮到当前触摸位置
        CGPoint newCenter = CGPointMake(currentPoint.x + xDistance, currentPoint.y + yDistance);
        self.center = newCenter;
   // }
    
}
@end
