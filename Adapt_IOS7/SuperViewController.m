//
//  SuperViewController.m
//  Adapt_IOS7
//
//  Created by zhoushejun on 14-6-21.
//  Copyright (c) 2014年 zhou. All rights reserved.
//

#import "SuperViewController.h"

@interface SuperViewController ()

@end

@implementation SuperViewController
@synthesize contentView = _contentView;

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = LINE_GRAY_COLOR;
    //当前contentView
    self.contentView = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    if (IOS_VERSION >= 7.0) {
        self.contentView.frame = CGRectMake(self.contentView.frame.origin.x, 20, self.contentView.frame.size.width, self.contentView.frame.size.height - 20);
    }else{
        self.contentView.frame = [UIScreen mainScreen].bounds;
    }
    self.contentView.backgroundColor = BLACK_BACKGROUND_COLOR;
    [self.view addSubview:self.contentView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
