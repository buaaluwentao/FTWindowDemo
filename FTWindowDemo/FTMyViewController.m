//
//  FTMyViewController.m
//  FTWindowDemo
//
//  Created by carson on 2021/7/16.
//

#import "FTMyViewController.h"

@interface FTMyViewController ()

@end

@implementation FTMyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
}

- (void)show {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    for (UIWindowScene *windowScene in [UIApplication sharedApplication].connectedScenes) {
        if (windowScene.activationState == UISceneActivationStateForegroundActive) {
            self.window.windowScene = windowScene;
        }
    }
    self.window.backgroundColor = [UIColor redColor];
    self.window.windowLevel = UIWindowLevelStatusBar + 3.f;
    self.window.hidden = NO;
    self.window.rootViewController = self;
}

@end
