//
//  ViewController.m
//  ZYP_CommonParameters
//
//  Created by zhaoyunpeng on 17/3/13.
//  Copyright © 2017年 zhaoyunpeng. All rights reserved.
//

#import "ViewController.h"
#import "ZYP_CommonParameters.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ZYP_CommonParameters *instance = [ZYP_CommonParameters shareInstance];
    NSDictionary *dic = [instance getInfoDictionary];
    NSLog(@"dic = %@",dic);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
