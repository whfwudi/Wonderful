//
//  ViewController.m
//  Wonderful
//
//  Created by dongshangxian on 15/10/26.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+Wonderful.h"
#import "SXColorGradientView.h"
#import "UIColor+Separate.h"
#import "SXMarquee.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIColor *testC = [UIColor redColor];
    float r= [testC red];
    float g= [testC green];
    float b= [testC blue];
    float alpha= [testC alpha];
    
    NSLog(@"******  %f,%f,%f,%f",r,g,b,alpha);
    
//    self.view.backgroundColor = [[UIColor redColor]up:3 num:255];
    // Do any additional setup after loading the view, typically from a nib.
    
//    SXColorGradientView *view2 = [SXColorGradientView createWithColor:[UIColor goldColor] frame:CGRectMake(0, 84, 375, 64) visible:NO direction:3];
    
    
    SXColorGradientView *view2 = [SXColorGradientView createWithFromColor:[UIColor lawnGreen] toColor:[UIColor peachRed] frame:CGRectMake(0, 84, 375, 200) direction:2];
    
    SXMarquee *mar = [[SXMarquee alloc]initWithFrame:CGRectMake(40, 300, 250, 30) Msg:@"重大活动，天猫的双十一，然而并没卵用" bgColor:[UIColor salmonColor] txtColor:[UIColor whiteColor]];
    [mar changeTapMarqueeAction:^{
        NSLog(@"擦擦");
    }];
    
    SXMarquee *mar2 = [[SXMarquee alloc]initWithFrame:CGRectMake(40, 350, 250, 30) Msg:@"重大活动，京东的双十一，然而并没卵用"];
//    mar2.frame = CGRectMake(40, 350, 100, 30);
    [mar2 changeMarqueeSpeedLevel:2];
    [mar2 changeMarqueeLabelFont:[UIFont boldSystemFontOfSize:15]];
    
    [self.view addSubview:mar2];
    
    [self.view addSubview:view2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
