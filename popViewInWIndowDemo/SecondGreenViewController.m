//
//  SecondGreenViewController.m
//  popViewInWIndowDemo
//
//  Created by James on 2015/3/9.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "SecondGreenViewController.h"

@interface SecondGreenViewController ()

@end

@implementation SecondGreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
    [_secondBaseView addGestureRecognizer:tap];
}

-(void) tapAction:(UITapGestureRecognizer*) recognizer
{
    [self removeFromParentViewController];
//    [self dismissViewControllerAnimated:NO completion:nil];
    NSLog(@"tap in SecondGreenViewController");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
