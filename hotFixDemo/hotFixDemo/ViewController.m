//
//  ViewController.m
//  hotFixDemo
//
//  Created by 马栋军 on 2018/4/4.
//  Copyright © 2018年 DangDang. All rights reserved.
//

#import "ViewController.h"
#import "JSViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 50)];
    [btn setTitle:@"Push DDViewController" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(handleBtn:) forControlEvents:UIControlEventTouchUpInside];
    [btn setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:btn];
}

- (void)handleBtn:(UIButton *)sender
{
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self testJSViewController];
}

- (void)testJSViewController
{
    JSViewController *js = [[JSViewController alloc] init];
    js.title = @"jsPatch测试页面";
    [self.navigationController pushViewController:js animated:YES];
}

- (void)testAppJump
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"bbb://name&xiaoming"] options:@{@"key1":@"value1",@"key2":@"value2"} completionHandler:^(BOOL success) {
        NSLog(@"跳转成功");
    }];
}

@end
