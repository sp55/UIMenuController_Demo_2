//
//  CustomViewController.m
//  UIMenuController_Demo_2
//
//  Created by admin on 16/7/12.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "CustomViewController.h"
#import "MenuLabel.h"

@interface CustomViewController ()
@property (weak, nonatomic) IBOutlet MenuLabel *label;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation CustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.webView loadHTMLString:@"<div style=\"color:red;\">这是一个WebView控件</div>" baseURL:nil];

    self.label.text = @"这是一个Label控件";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}


@end
