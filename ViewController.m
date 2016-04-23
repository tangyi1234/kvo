//
//  ViewController.m
//  kvo
//
//  Created by 汤义 on 16/4/22.
//  Copyright © 2016年 汤义. All rights reserved.
//

#import "ViewController.h"
#import "TYKvo.h"
#import "TYinit.h"
@interface ViewController ()<KCButtonDelegate>
@property (nonatomic, strong) TYinit *views;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //这里就如同初始化kvo
    _views = [[TYinit alloc] init];
    _views.delegate = self;
    [self.view addSubview:_views];
    
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    but.frame = CGRectMake(10, 100, 100, 30);
    but.backgroundColor = [UIColor redColor];
    [but addTarget:self action:@selector(buts) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview:but];
    

}
//这里如同
-(void)initDelegate {
    NSLog(@"kvo执行了");
}

- (void)buts {
   _views.str = @"123345";
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
