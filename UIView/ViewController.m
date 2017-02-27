//
//  ViewController.m
//  UIView
//
//  Created by Ferrakkem on 2/27/17.
//  Copyright © 2017 Ferrakkem. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView *topImageView;
    UIView *bottomImageView;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
#pragma mark ::: set background color
    self.view.backgroundColor = [UIColor grayColor];
    
#pragma mark ::: call Two View
    [self creatUiView];
    [self createRectView];
 }

#pragma mark::: Create round UIView
-(void) creatUiView
{
    topImageView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 120, 120)];
    [topImageView setBackgroundColor:[UIColor clearColor]];
    
#pragma mark ::: create a UIImage View
    UIImageView * imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"j.jpg"]];
    [topImageView addSubview:imageView];
    
    [topImageView layoutIfNeeded];
    topImageView.clipsToBounds = YES;
    topImageView.layer.cornerRadius = 10;
    [self.view addSubview:topImageView];
}

#pragma mark::: Create rectangle UIView
-(void) createRectView
{
    bottomImageView = [[ UIView alloc] initWithFrame:CGRectMake(100, 260, 120, 120)];
    [bottomImageView setBackgroundColor:[UIColor greenColor]];
    
#pragma mark ::: create a UIImage View
    UIImageView *imageViewTwo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"thor.jpg"]];
    [bottomImageView addSubview:imageViewTwo];
    
    [bottomImageView layoutIfNeeded];
    bottomImageView.clipsToBounds = YES;
    bottomImageView.layer.cornerRadius = CGRectGetWidth(bottomImageView.frame)/2;
    [self.view addSubview:bottomImageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
