//
//  ViewController.m
//  RouterReverseDemo
//
//  Created by allentang on 2017/2/18.
//  Copyright © 2017年 allentang. All rights reserved.
//

#import "ViewController.h"
#import "ENNativePushManager.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)jump:(id)sender {
    [ENNativePushManager PushEningViewController:@"ening://blank?id=1&name=李四" animated:YES reverseBlock:^(NSMutableDictionary *dict) {
        self.titleLabel.text = dict[@"title"];
        NSLog(@"%@",dict[@"title"]);
    }];
}

@end
