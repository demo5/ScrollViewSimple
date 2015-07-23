//
//  ViewController.m
//  ScrollViewSimple
//
//  Created by Zach on 15/7/23.
//  Copyright (c) 2015年 Zack. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    //在私有扩展中创建一个属性
    UIScrollView *_scrollView;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 1.创建UIScrollView
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.frame = CGRectMake(35, 150, 250, 250); // frame中的size指UIScrollView的可视范围
    //scrollView.frame = self.view.bounds;
    scrollView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:scrollView];
    
    // 2.创建UIImageView（图片）
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.image = [UIImage imageNamed:@"big.jpg"];
    CGFloat imgW = imageView.image.size.width; // 图片的宽度
    CGFloat imgH = imageView.image.size.height; // 图片的高度
    imageView.frame = CGRectMake(0, 0, imgW, imgH);
    [scrollView addSubview:imageView];
  
#pragma mark scrollView的基本属性实例
    // 3.设置scrollView的属性
    
    // 1.设置UIScrollView的滚动范围（内容大小）
    scrollView.contentSize = imageView.image.size;
    
    // 2.隐藏水平滚动条和垂直滚动条
    scrollView.showsHorizontalScrollIndicator = YES;
    scrollView.showsVerticalScrollIndicator = NO;
    
    // 3.用来记录scrollview滚动的位置
        scrollView.contentOffset = CGPointMake(50, 50);
    
    // 4.弹簧效果
        scrollView.bounces = YES;
    
    // 5.增加额外的滚动区域（逆时针，上、左、下、右）
    // top  left  bottom  right
   // scrollView.contentInset = UIEdgeInsetsMake(20, 20, 20, 20);
    
    
    
    //6.是否可以滚动
    scrollView.scrollEnabled = YES;
#pragma mark   end
    
}



@end