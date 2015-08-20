//
//  ViewController.m
//  Animation01
//
//  Created by HB on 15/7/21.
//  Copyright (c) 2015年 HB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *bubblesArr;
}

@end

@implementation ViewController

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    self.logoImg.frame=CGRectMake(self.logoImg.frame.origin.x-self.view.frame.size.width, self.logoImg.frame.origin.y, self.logoImg.frame.size.width, self.logoImg.frame.size.height);
    self.username.frame=CGRectMake(self.username.frame.origin.x-self.view.frame.size.width, self.username.frame.origin.y, self.username.frame.size.width, self.username.frame.size.height);
    self.password.frame=CGRectMake(self.password.frame.origin.x-self.view.frame.size.width, self.password.frame.origin.y, self.password.frame.size.width, self.password.frame.size.height);
    self.loginBtn.frame=CGRectMake(self.loginBtn.frame.origin.x-self.view.frame.size.width, self.loginBtn.frame.origin.y, self.loginBtn.frame.size.width, self.loginBtn.frame.size.height);
    self.dot.frame=CGRectMake(self.dot.frame.origin.x-self.view.frame.size.width, self.dot.frame.origin.y, self.dot.frame.size.width, self.dot.frame.size.height);
    
    
    
    for (int i=0; i<bubblesArr.count; i++) {
        UIImageView *img=(UIImageView *)[bubblesArr objectAtIndex:i];
        [UIView animateWithDuration:0.3 delay:0+i*0.08 usingSpringWithDamping:0.4 initialSpringVelocity:0.1 options:UIViewAnimationOptionAllowUserInteraction animations:^{
            img.transform=CGAffineTransformMakeScale(1, 1);
            img.transform=CGAffineTransformMakeScale(1, 1);
        } completion:^(BOOL finished) {
            
        }];
    }

    
    [UIView animateWithDuration:0.4 delay:0.2 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.logoImg.center=CGPointMake(self.logoImg.center.x+self.view.frame.size.width, self.logoImg.center.y);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:5.5 delay:0 usingSpringWithDamping:0.1 initialSpringVelocity:1 options:UIViewAnimationOptionCurveLinear animations:^{
            self.dot.center=CGPointMake(self.dot.center.x+self.view.frame.size.width, self.dot.center.y);
        } completion:^(BOOL finished) {
            
        }];
        
    }];
    
    [UIView animateWithDuration:0.4 delay:0.4 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.username.center=CGPointMake(self.username.center.x+self.view.frame.size.width, self.username.center.y);
    } completion:^(BOOL finished) {
        
    }];
    
    [UIView animateWithDuration:0.4 delay:0.6 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.password.center=CGPointMake(self.password.center.x+self.view.frame.size.width, self.password.center.y);
    } completion:^(BOOL finished) {
        
    }];
    
    [UIView animateWithDuration:0.4 delay:0.8 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.loginBtn.center=CGPointMake(self.loginBtn.center.x+self.view.frame.size.width, self.loginBtn.center.y);
    } completion:^(BOOL finished) {
        
    }];
    
    

}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    bubblesArr=[[NSArray alloc]initWithObjects:self.bubble1, self.bubble2, self.bubble3, self.bubble4, self.bubble5, nil];
    
    for (int i=0; i<bubblesArr.count; i++) {
        UIImageView *img=(UIImageView *)[bubblesArr objectAtIndex:i];
        img.transform=CGAffineTransformMakeScale(0, 0);
    }

    self.username.insetLeftWidth=40;
    self.username.insetLeftViewWidth=10;
    self.username.insetViewHight=10;
    self.username.leftImgText=@"User";
    self.username.leftViewMode=UITextFieldViewModeAlways;
    
    self.password.insetLeftWidth=40;
    self.password.insetLeftViewWidth=10;
    self.password.insetViewHight=10;
    self.password.leftImgText=@"Key";
    self.password.leftViewMode=UITextFieldViewModeAlways;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextFieldDelegate
//-(void)textFieldDidBeginEditing:(UITextField *)textField
//{
//    textField.layer.borderColor=[UIColor redColor].CGColor;
//    textField.layer.borderWidth=1;
//    
//}
//
//-(void)textFieldDidEndEditing:(UITextField *)textField
//{
//    textField.layer.borderColor=[UIColor greenColor].CGColor;
//    textField.layer.borderWidth=1;
//}

- (IBAction)Login:(id)sender {
    
    self.activityIndicator.hidden=NO;
    [self.activityIndicator startAnimating];
    
    self.loginBtn.center=CGPointMake(self.loginBtn.center.x-20, self.loginBtn.center.y);
    [UIView animateWithDuration:2 delay:2 usingSpringWithDamping:0.1 initialSpringVelocity:0.8 options:UIViewAnimationOptionCurveLinear animations:^{
        [self.activityIndicator stopAnimating];
        self.loginBtn.center=CGPointMake(self.loginBtn.center.x, self.loginBtn.center.y);
    } completion:^(BOOL finished) {
        self.loginBtn.center=CGPointMake(self.loginBtn.center.x, self.loginBtn.center.y+self.loginBtn.frame.size.height+20);
    }];

}

@end
