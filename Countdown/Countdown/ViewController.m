//
//  ViewController.m
//  Countdown
//
//  Created by  江苏 on 16/4/6.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *countLbel;
@property(nonatomic,strong)NSTimer* timer;
@property(nonatomic)int count;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
-(void)startCount{
    self.timer=[NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countNumber) userInfo:nil repeats:YES];
}
-(void)countNumber{
    self.count=[self.countLbel.text intValue];
    if (self.count==0) {
        [self.timer invalidate];
        return;
    };
    self.count--;
    self.countLbel.text=[NSString stringWithFormat:@"%d",self.count];
}
- (IBAction)countAction:(UIButton *)sender {
    switch (sender.tag) {
        case 0:
            [self startCount];
            break;
        case 1:
            if (self.timer==nil) {
                break;
            }else{
            [self.timer invalidate];
            break;
            }
        default:
            break;
    }
}

@end
