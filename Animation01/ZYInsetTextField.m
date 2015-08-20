//
//  ZYInsetTextField.m
//  Animation01
//
//  Created by HB on 15/8/20.
//  Copyright (c) 2015年 HB. All rights reserved.
//

#import "ZYInsetTextField.h"

@implementation ZYInsetTextField

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.insetHight=0;
        self.insetLeftWidth=0;
        self.insetLeftViewWidth=0;
        self.insetViewHight=0;
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.insetHight=0;
        self.insetLeftWidth=0;
        self.insetLeftViewWidth=0;
        self.insetViewHight=0;
    }
    return self;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


//控制 placeHolder 的位置，左右缩 20
- (CGRect)textRectForBounds:(CGRect)bounds
{
     return CGRectInset( bounds , self.insetLeftWidth , self.self.insetHight );
}


// 控制文本的位置，左右缩 20
- (CGRect)editingRectForBounds:(CGRect)bounds {
    return CGRectInset( bounds , self.insetLeftWidth , self.insetHight );
}

- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
    return CGRectInset( CGRectMake(0, 0, self.insetLeftWidth, bounds.size.height) , self.insetLeftViewWidth , self.insetViewHight);
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
    return CGRectInset(CGRectMake(0, bounds.size.width-self.insetLeftWidth, self.insetLeftWidth, bounds.size.height) , self.insetLeftViewWidth , self.insetViewHight );
}

-(void)setLeftImgText:(NSString *)leftImgText
{
    UIImageView *leftImg=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.insetLeftWidth-2*self.insetLeftViewWidth, self.frame.size.height-2*self.insetViewHight)];
    leftImg.image=[UIImage imageNamed:leftImgText];
    self.leftView=leftImg;
}

-(void)setRightImgText:(NSString *)rightImgText
{
    UIImageView *rightImg=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.insetLeftWidth-2*self.insetLeftViewWidth, self.frame.size.height-2*self.insetViewHight)];
    rightImg.image=[UIImage imageNamed:rightImgText];
    self.leftView=rightImg;
}





@end
