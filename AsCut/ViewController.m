//
//  ViewController.m
//  AsCut
//
//  Created by zhongyu on 16/6/22.
//  Copyright © 2016年 RyeWhiskey. All rights reserved.
//

#import "ViewController.h"
#import "RWCompleteCutView.h"

@interface ViewController ()

<
    RWCompleteCutViewDelegate
>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *images = @[[UIImage imageNamed:@"beauty1.jpg"],
                        [UIImage imageNamed:@"beauty2.jpg"],
                        [UIImage imageNamed:@"beauty3.jpg"],
                        [UIImage imageNamed:@"beauty4.jpg"],
                        [UIImage imageNamed:@"beauty5.jpg"],
                        [UIImage imageNamed:@"beauty6.jpg"],
                        [UIImage imageNamed:@"beauty7.jpg"]];
    
    RWCompleteCutView *cut = [[RWCompleteCutView alloc] initWithConstraint:^(MASConstraintMaker *make) {
       
        make.left.equalTo(self.view.mas_left).offset(0);
        make.right.equalTo(self.view.mas_right).offset(0);
        make.top.equalTo(self.view.mas_top).offset(0);
        make.bottom.equalTo(self.view.mas_bottom).offset(0);
    }];
    
    [self.view addSubview:cut];
    
    cut.cardSource = images;
    cut.eventSource = self;
}

- (void)buttonDidClickWithIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%@",indexPath);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
