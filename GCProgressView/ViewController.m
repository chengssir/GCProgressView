//
//  ViewController.m
//  GCProgressView
//
//  Created by chengs on 15/12/3.
//  Copyright © 2015年 chengs. All rights reserved.
//

#import "ViewController.h"
#import "GCPrigressView.h"
#import "GCLoopProgressView.h"
#import "GCBallProgressView.h"
#import "GCLoadingProgressView.h"

@interface ViewController ()
@property (nonatomic ,strong) GCPrigressView *demoView;
//@property (nonatomic ,strong) GCPrigressView *demoView1;
//@property (nonatomic ,strong) GCPrigressView *demoView2;
//@property (nonatomic ,strong) GCPrigressView *demoView3;
//@property (nonatomic ,strong) GCLoopProgressView *demoView;
//@property (nonatomic ,strong) GCBallProgressView *demoView;
//@property (nonatomic ,strong) GCLoadingProgressView *demoView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor orangeColor];
    
    [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(progressSimulation) userInfo:self repeats:YES];

//    [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(progressSimulation1) userInfo:self repeats:YES];
//    
//    [NSTimer scheduledTimerWithTimeInterval:0.02 target:self selector:@selector(progressSimulation2) userInfo:self repeats:YES];
//    
//    [NSTimer scheduledTimerWithTimeInterval:0.03 target:self selector:@selector(progressSimulation3) userInfo:self repeats:YES];

    
    
    self.demoView
    = [[GCPrigressView alloc]init];
    self.demoView.frame = CGRectMake(100, 50, 100, 100);
    [self.view addSubview:self.demoView];

//    
//    self.demoView1
//    = [[GCPrigressView alloc]init];
//    self.demoView1.frame = CGRectMake(100, 150, 100, 100);
//    [self.view addSubview:self.demoView1];
//    
//    
//    self.demoView2
//    = [[GCPrigressView alloc]init];
//    self.demoView2.frame = CGRectMake(100, 250, 100, 100);
//    [self.view addSubview:self.demoView2];
//    
//    
//    self.demoView3
//    = [[GCPrigressView alloc]init];
//    self.demoView3.frame = CGRectMake(100, 350, 100, 100);
//    [self.view addSubview:self.demoView3];

}

- (void)progressSimulation
{
    static CGFloat progress = 0;
    
    if (progress < 1.0) {
        progress += 0.01;
        // 循环
        if (progress >= 1.0) progress
            = 0;
        self.demoView.progress = progress;
//        self.demoView1.progress = progress;
//        self.demoView2.progress = progress;
//        self.demoView3.progress = progress;
        
    }
}
//- (void)progressSimulation1
//{
//    static CGFloat progress = 0;
//    
//    if (progress < 1.0) {
//        progress += 0.01;
//        // 循环
//        if (progress >= 1.0) progress
//            = 0;
////        self.demoView.progress = progress;
//        self.demoView1.progress = progress;
////        self.demoView2.progress = progress;
////        self.demoView3.progress = progress;
//        
//    }
//}
//- (void)progressSimulation2
//{
//    static CGFloat progress = 0;
//    
//    if (progress < 1.0) {
//        progress += 0.01;
//        // 循环
//        if (progress >= 1.0) progress
//            = 0;
////        self.demoView.progress = progress;
////        self.demoView1.progress = progress;
//        self.demoView2.progress = progress;
////        self.demoView3.progress = progress;
//        
//    }
//}
//- (void)progressSimulation3
//{
//    static CGFloat progress = 0;
//    
//    if (progress < 1.0) {
//        progress += 0.01;
//        // 循环
//        if (progress >= 1.0) progress
//            = 0;
////        self.demoView.progress = progress;
////        self.demoView1.progress = progress;
////        self.demoView2.progress = progress;
//        self.demoView3.progress = progress;
//        
//    }
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
