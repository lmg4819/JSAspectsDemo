//
//  ViewController.m
//  JSAspectsDemo
//
//  Created by 罗孟歌 on 2019/8/26.
//  Copyright © 2019 we. All rights reserved.
//

#import "ViewController.h"
#import "JSAspects.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self aspect_hookSelector:@selector(viewWillAppear:) withOptions:JSAspectPositionBefore usingBlock:^(id<JSAspectInfo> info){
        if (info) {
            NSLog(@"---%@---",info.instance);
        }
    } error:nil];
    
    [self aspect_hookSelector:@selector(viewDidAppear:) withOptions:JSAspectPositionInstead usingBlock:^(id<JSAspectInfo> info){
        if (info) {
            NSLog(@"333333333333333333");
        }
    } error:nil];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"1111111111");
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"22222222222");
}

@end
