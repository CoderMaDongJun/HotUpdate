//
//  ViewController.m
//  demo2
//
//  Created by 马栋军 on 2018/4/4.
//  Copyright © 2018年 马栋军. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    // url传参
//    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"aaa://abce:name/jack"] options:@{@"key1":@"value1",@"key2":@"value2"} completionHandler:^(BOOL success) {
//        NSLog(@"跳转成功");
//    }];
    
    // 剪切板传参
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    pasteboard.string = @"Modal.jpg";
    
    // NSData *imageData = UIImageJPEGRepresentation([UIImage imageNamed:@"Modal.jpg"], 0);
    // [pasteboard setData:imageData forPasteboardType:@"Modal.jpg"];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"aaa://params?param1=111&param2=222"]];
    
    
    
}

@end
