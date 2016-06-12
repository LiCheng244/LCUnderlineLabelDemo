//
//  ViewController.m
//  Label
//
//  Created by LiCheng on 16/5/30.
//  Copyright © 2016年 LiCheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc] initWithFrame:(CGRectMake(40, 50, 100, 30))];
    NSString *textStr = [NSString stringWithFormat:@"¥1000000元"];
    
    NSDictionary *attribtDic = @{NSStrikethroughStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleSingle]};
    NSMutableAttributedString *attribtStr = [[NSMutableAttributedString alloc]initWithString:textStr attributes:attribtDic];
    label.textColor = [UIColor redColor];
    label.attributedText = attribtStr;
    
    [self.view addSubview:label];
    
    
    UILabel *underlineLabel = [[UILabel alloc] initWithFrame:(CGRectMake(40, 150, 100, 30))];
    NSString *textStr1 = [NSString stringWithFormat:@"¥2000000元"];
    
    // 下划线
    NSDictionary *attribtDic1 = @{NSUnderlineStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleSingle]};
    NSMutableAttributedString *attribtStr1 = [[NSMutableAttributedString alloc]initWithString:textStr1 attributes:attribtDic1];
    
    //赋值
    underlineLabel.attributedText = attribtStr1;
    
    [self.view addSubview:underlineLabel];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
