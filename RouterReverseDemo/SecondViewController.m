//
//  SecondViewController.m
//  RouterReverseDemo
//
//  Created by allentang on 2017/2/18.
//  Copyright © 2017年 allentang. All rights reserved.
//

#import "SecondViewController.h"
#import "UIViewController+ReverseValue.h"

@interface SecondViewController ()
@property (nonatomic,strong) NSMutableDictionary *dict;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if (self.reserveValue) {
        //这里最好回调一个字典过去,因为可能会有多个参数
        self.reserveValue(self.dict);
    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (NSMutableDictionary *)dict{
    _dict = [NSMutableDictionary dictionary];
    [_dict setObject:@"123" forKey:@"title"];
    return _dict;
}

@end
