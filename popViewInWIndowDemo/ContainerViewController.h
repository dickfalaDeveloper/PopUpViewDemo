//
//  ContainerViewController.h
//  popViewInWIndowDemo
//
//  Created by James on 2015/3/9.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContainerViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *popupGreenBtn;
@property (weak, nonatomic) IBOutlet UIButton *popupRedBtn;
- (IBAction)popupGreenBtnAction:(id)sender;
- (IBAction)popupRedBtnAction:(id)sender;


@end
