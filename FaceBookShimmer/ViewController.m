//
//  ViewController.m
//  FaceBookShimmer
//
//  Created by 宓珂璟 on 16/6/21.
//  Copyright © 2016年 宓珂璟. All rights reserved.
//

#import "ViewController.h"
#import <FBShimmering.h>
#import <FBShimmeringView.h>

@interface ViewController ()

@property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) FBShimmeringView *shimmeringView;
@property (nonatomic,strong) FBShimmeringView *shimmeringView2;
@property (nonatomic,strong) FBShimmeringView *shimmeringView3;
@property (nonatomic,strong) FBShimmeringView *shimmeringView4;
@property (nonatomic,strong) UILabel *shimmerLabel;
@property (nonatomic,strong) UILabel *shimmerLabel2;
@property (nonatomic,strong) UILabel *shimmerLabel3;
@property (nonatomic,strong) UIImageView *headImageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.imageView = [[UIImageView alloc] init];
    self.imageView.frame = self.view.bounds;
    self.imageView.image = [UIImage imageNamed:@"Greg-Rakozy-1400x725.jpg"];
    self.imageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:self.imageView];
    
//    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleDark]];
//    effectView.frame = self.view.bounds;
//    [self.imageView addSubview:effectView];
    
    self.shimmeringView = [[FBShimmeringView alloc] initWithFrame:CGRectMake(0, 300, 375, 120)];
    self.shimmeringView.shimmering = YES;
    self.shimmeringView.shimmeringOpacity = 0.2;
    self.shimmeringView.shimmeringBeginFadeDuration = 0.5;
    self.shimmeringView.shimmeringSpeed = 200;
    self.shimmeringView.shimmeringAnimationOpacity = 1.0;
    [self.view addSubview:self.shimmeringView];
    
    self.shimmerLabel = [[UILabel alloc] initWithFrame:self.shimmeringView.bounds];
    self.shimmerLabel.text = @"JUST LIKE A DOG";
    self.shimmerLabel.textColor = [UIColor whiteColor];
    self.shimmerLabel.textAlignment = NSTextAlignmentCenter;
    self.shimmerLabel.font = [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:40.0];
    self.shimmerLabel.backgroundColor = [UIColor clearColor];
    self.shimmeringView.contentView = self.shimmerLabel;
    
    
    self.shimmeringView2 = [[FBShimmeringView alloc] initWithFrame:CGRectMake(0, 100, 375, 120)];
    self.shimmeringView2.shimmering = YES;
    self.shimmeringView2.shimmeringOpacity = 0;
    self.shimmeringView2.shimmeringBeginFadeDuration = 0.3;
    self.shimmeringView2.shimmeringEndFadeDuration = 2;
    self.shimmeringView2.shimmeringAnimationOpacity = 0.6;
    [self.view addSubview:self.shimmeringView2];
    
    self.shimmerLabel2 = [[UILabel alloc] initWithFrame:self.shimmeringView2.bounds];
    self.shimmerLabel2.text = @"落霞与孤鹜齐飞";
    self.shimmerLabel2.textColor = [UIColor redColor];
    self.shimmerLabel2.textAlignment = NSTextAlignmentCenter;
    self.shimmerLabel2.font = [UIFont boldSystemFontOfSize:40];
    self.shimmerLabel2.backgroundColor = [UIColor clearColor];
    self.shimmeringView2.contentView = self.shimmerLabel2;
    
    

    self.shimmeringView3 = [[FBShimmeringView alloc] initWithFrame:CGRectMake(0, 200, 375, 120)];
    self.shimmeringView3.shimmering = YES;
    self.shimmeringView3.shimmeringOpacity = 0;
    self.shimmeringView3.shimmeringDirection = FBShimmerDirectionLeft;
    self.shimmeringView3.shimmeringBeginFadeDuration = 0.3;
    self.shimmeringView3.shimmeringSpeed = 150;
    [self.view addSubview:self.shimmeringView3];
    
    self.shimmerLabel3 = [[UILabel alloc] initWithFrame:self.shimmeringView2.bounds];
    self.shimmerLabel3.text = @"秋水共长天一色";
    self.shimmerLabel3.textColor = [UIColor colorWithRed:255/255.0 green:194/255.0 blue:1/255.0 alpha:1];
    self.shimmerLabel3.textAlignment = NSTextAlignmentCenter;
    self.shimmerLabel3.font = [UIFont boldSystemFontOfSize:40];
    self.shimmerLabel3.backgroundColor = [UIColor clearColor];
    self.shimmeringView3.contentView = self.shimmerLabel3;
    
    
    self.shimmeringView4 = [[FBShimmeringView alloc] initWithFrame:CGRectMake(140, 400, 80, 80)];
    self.shimmeringView4.shimmering = YES;
    self.shimmeringView4.shimmeringOpacity = 1;
    self.shimmeringView4.shimmeringDirection = FBShimmerDirectionLeft;
    self.shimmeringView4.shimmeringBeginFadeDuration = 0.3;
    self.shimmeringView4.shimmeringPauseDuration = 3;
    self.shimmeringView4.shimmeringHighlightWidth = 0.9;
    self.shimmeringView4.shimmeringSpeed = 150;
    self.shimmeringView4.layer.cornerRadius = 40;
    self.shimmeringView4.clipsToBounds = YES;
    self.shimmeringView4.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.shimmeringView4];
    
    self.headImageView = [[UIImageView alloc] initWithFrame:self.shimmeringView4.bounds];
    self.headImageView.image = [UIImage imageNamed:@"photo-1433878455169-4698e60005b1-1400x933.jpeg"];
    self.headImageView.contentMode = UIViewContentModeScaleToFill;
    self.headImageView.layer.cornerRadius = 40;
    self.headImageView.clipsToBounds = YES;
    self.shimmeringView4.contentView = self.headImageView;
    
    //! @abstract Set this to YES to start shimming and NO to stop. Defaults to NO.
    // 是否闪烁
    //@property (nonatomic, assign, readwrite, getter = isShimmering) BOOL shimmering;
    
    //! @abstract The time interval between shimmerings in seconds. Defaults to 0.4.
    // 两次闪烁之间的间隔
    //@property (assign, nonatomic, readwrite) CFTimeInterval shimmeringPauseDuration;
    
    //! @abstract The opacity of the content while it is shimmering. Defaults to 1.0.
    // 闪烁时动画的透明度 1.0就是原始亮度   0-1之间随意选择
    //@property (assign, nonatomic, readwrite) CGFloat shimmeringAnimationOpacity;
    
    //! @abstract The opacity of the content before it is shimmering. Defaults to 0.5.
    // 闪烁前的透明度，例如默认0.5，那么和上面那个参数对比下，就是0.5-1之间闪烁
    //@property (assign, nonatomic, readwrite) CGFloat shimmeringOpacity;
    
    //! @abstract The speed of shimmering, in points per second. Defaults to 230.
    // 闪烁的速度
    //@property (assign, nonatomic, readwrite) CGFloat shimmeringSpeed;
    
    //! @abstract The highlight length of shimmering. Range of [0,1], defaults to 0.33.
    // 闪烁过去的时候那条线的宽度 0 - 1之间的浮点数切换
    //@property (assign, nonatomic, readwrite) CGFloat shimmeringHighlightLength;
    
    //! @abstract @deprecated Same as "shimmeringHighlightLength", just for downward compatibility
    // 和上面类似
    //@property (assign, nonatomic, readwrite, getter = shimmeringHighlightLength, setter = setShimmeringHighlightLength:) CGFloat shimmeringHighlightWidth;
    
    //! @abstract The direction of shimmering animation. Defaults to FBShimmerDirectionRight.
    // 闪烁的方向，这个枚举有上下左右四个方向
    //@property (assign, nonatomic, readwrite) FBShimmerDirection shimmeringDirection;
    
    //! @abstract The duration of the fade used when shimmer begins. Defaults to 0.1.
    // 开始闪烁的时间间隔
    //@property (assign, nonatomic, readwrite) CFTimeInterval shimmeringBeginFadeDuration;
    
    //! @abstract The duration of the fade used when shimmer ends. Defaults to 0.3.
    // 结束闪烁的时间间隔
    //@property (assign, nonatomic, readwrite) CFTimeInterval shimmeringEndFadeDuration;
    
    /**
     @abstract The absolute CoreAnimation media time when the shimmer will fade in.
     @discussion Only valid after setting {@ref shimmering} to NO.
     */
    // 闪烁到shimmeringAnimationOpacity的时候fade需要多久
    //@property (assign, nonatomic, readonly) CFTimeInterval shimmeringFadeTime;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
