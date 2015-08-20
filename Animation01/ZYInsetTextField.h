//
//  ZYInsetTextField.h
//  Animation01
//
//  Created by HB on 15/8/20.
//  Copyright (c) 2015年 HB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYInsetTextField : UITextField

@property(nonatomic,assign)CGFloat insetLeftWidth;
@property(nonatomic,assign)CGFloat insetHight;

@property(nonatomic,assign)CGFloat insetLeftViewWidth;
@property(nonatomic,assign)CGFloat insetViewHight;

@property(nonatomic,strong)NSString *leftlableText;
@property(nonatomic,strong)NSString *rightlableText;

@property(nonatomic,strong)NSString *leftImgText;
@property(nonatomic,strong)NSString *rightImgText;

@end
