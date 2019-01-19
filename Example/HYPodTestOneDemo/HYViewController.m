//
//  HYViewController.m
//  HYPodTestOneDemo
//
//  Created by ITHanYong on 01/19/2019.
//  Copyright (c) 2019 ITHanYong. All rights reserved.
//

#import "HYViewController.h"


@interface HYViewController ()
//@property (nonatomic, strong) AirBubbleView * airBubbleView;
@end

@implementation HYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(100, 100, 40, 40);
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)click:(UIButton *)sender{
    
//    _airBubbleView = [[AirBubbleView alloc] initWithFrame:CGRectMake(sender.frame.origin.x, sender.frame.origin.y+sender.frame.size.height, self.view.frame.size.width/2, 100) text:@"success" pointX:sender.frame.size.width/2];
//    [self.view addSubview:self.airBubbleView];
    
    [UIView animateWithDuration:0.1 animations:^{
        [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
    }];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [UIView animateWithDuration:0.1 animations:^{
        [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
        
    } completion:^(BOOL finished) {
        
//        [self.airBubbleView removeFromSuperview];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
