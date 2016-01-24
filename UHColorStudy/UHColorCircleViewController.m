//
//  UHColorCircleViewController.m
//  UHColorStudy
//
//  Created by HanXiao on 16/1/22.
//  Copyright © 2016年 HanXiao. All rights reserved.
//

#import "UHColorCircleViewController.h"
#import "UHColorCircleView.h"

@interface UHColorCircleViewController ()
@property(nonatomic, strong) UHColorCircleView *colorCircle;
@end

@implementation UHColorCircleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _colorCircle = [[UHColorCircleView alloc] initWithFrame:CGRectMake(50, 50, self.view.bounds.size.height / 2 - 50, self.view.bounds.size.height / 2 - 50)];
    _colorCircle.percent = 0.1;
    [self.view addSubview:_colorCircle];
    
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
