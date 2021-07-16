//
//  ViewController.m
//  FTWindowDemo
//
//  Created by carson on 2021/7/16.
//

#import "ViewController.h"
#import "FTMyViewController.h"

@interface ViewController ()

@property(nonatomic, strong) FTMyViewController *vc;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:btn];
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    [btn setTitleColor:UIColor.redColor forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)clicked:(UIButton *)btn {
    self.vc = [[FTMyViewController alloc] init];
    [self.vc show];
}

@end
