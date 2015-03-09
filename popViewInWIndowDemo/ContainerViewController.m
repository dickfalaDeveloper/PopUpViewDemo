//
//  ContainerViewController.m
//  popViewInWIndowDemo
//
//  Created by James on 2015/3/9.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "ContainerViewController.h"
#import "SecondGreenViewController.h"
#import "ThirdRedViewController.h"
#import "AppDelegate.h"

@implementation ContainerViewController
{
    AppDelegate *appDelegate;
    SecondGreenViewController *secondGreenVC;
    ThirdRedViewController *thirdRedVC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"ContainerViewController view didload");
    
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];

    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    
    secondGreenVC = (SecondGreenViewController*)[mainStoryboard instantiateViewControllerWithIdentifier:@"SecondGreenViewController"];
    
    thirdRedVC = (ThirdRedViewController*)[mainStoryboard instantiateViewControllerWithIdentifier:@"ThirdRedViewController"];
    

//    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
//    [secondGreenVC.baseView addGestureRecognizer:tap];

   
    
}

//-(void) tapAction:(UITapGestureRecognizer*) recognizer
//{
//    [secondGreenVC.view removeFromSuperview];
//    [appDelegate.window bringSubviewToFront:self.view];
//    NSLog(@"tap");
//}



- (IBAction)popupGreenBtnAction:(id)sender {
    [appDelegate.window addSubview: secondGreenVC.view];
    [appDelegate.window bringSubviewToFront:secondGreenVC.view];

}

- (IBAction)popupRedBtnAction:(id)sender {
    [appDelegate.window addSubview: thirdRedVC.view];
    [appDelegate.window bringSubviewToFront:thirdRedVC.view];

}
@end
