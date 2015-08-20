//
//  ViewController.h
//  Animation01
//
//  Created by HB on 15/7/21.
//  Copyright (c) 2015年 HB. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZYInsetTextField.h"

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *bubble2;
@property (weak, nonatomic) IBOutlet UIImageView *bubble1;
@property (weak, nonatomic) IBOutlet UIImageView *bubble3;
@property (weak, nonatomic) IBOutlet UIImageView *bubble4;
@property (weak, nonatomic) IBOutlet UIImageView *bubble5;
@property (weak, nonatomic) IBOutlet UIImageView *logoImg;
@property (weak, nonatomic) IBOutlet ZYInsetTextField *username;
@property (weak, nonatomic) IBOutlet ZYInsetTextField *password;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (weak, nonatomic) IBOutlet UIImageView *dot;

- (IBAction)Login:(id)sender;

@end

