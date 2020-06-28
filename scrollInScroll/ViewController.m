//
//  ViewController.m
//  scrollInScroll
//
//  Created by 张聪 on 2020/6/28.
//  Copyright © 2020 Touch. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (nonatomic,strong) UIScrollView *horizontalScrol;
@property (nonatomic,strong) UIScrollView *verticalScrol;
@property (nonatomic,strong) UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat sw = [UIScreen mainScreen].bounds.size.width;
    

    self.text = @"Hooray! It's snowing! It's time to make a snowman.James runs out. He makes a big pile of snow. He puts a big snowball on top. He adds a scarf and a hat. He adds an orange for the nose. He adds coal for the eyes and buttons.In the evening, James opens the door. What does he see? The snowman is moving! James invites him in. The snowman has never been inside a house. He says hello to the cat. He plays with paper towels.A moment later, the snowman takes James's hand and goes out.They go up, up, up into the air! They are flying! What a wonderful night!The next morning, James jumps out of bed. He runs to the door.He wants to thank the snowman. But he's gone.Hooray! It's snowing! It's time to make a snowman.James runs out. He makes a big pile of snow. He puts a big snowball on top. He adds a scarf and a hat. He adds an orange for the nose. He adds coal for the eyes and buttons.In the evening, James opens the door. What does he see? The snowman is moving! James invites him in. The snowman has never been inside a house. He says hello to the cat. He plays with paper towels.A moment later, the snowman takes James's hand and goes out.They go up, up, up into the air! They are flying! What a wonderful night!The next morning, James jumps out of bed. He runs to the door.He wants to thank the snowman. But he's gone.Hooray! It's snowing! It's time to make a snowman.James runs out. He makes a big pile of snow. He puts a big snowball on top. He adds a scarf and a hat. He adds an orange for the nose. He adds coal for the eyes and buttons.In the evening, James opens the door. What does he see? The snowman is moving! James invites him in. The snowman has never been inside a house. He says hello to the cat. He plays with paper towels.A moment later, the snowman takes James's hand and goes out.They go up, up, up into the air! They are flying! What a wonderful night!The next morning, James jumps out of bed. He runs to the door.He wants to thank the snowman. But he's gone.";
    CGSize size = [self.text boundingRectWithSize:CGSizeMake(self.view.bounds.size.width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:14]} context:nil].size;
    
    
    UIScrollView *vs = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    vs.delegate = self;
    [self.view addSubview:vs];
    self.verticalScrol = vs;
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, size.height)];
    [self.verticalScrol addSubview:label];
    label.text = self.text;
    self.label = label;
    label.font = [UIFont systemFontOfSize:14];
    label.numberOfLines = 0;
//    label.backgroundColor = [UIColor orangeColor];
    
    
    UIScrollView *hs = [[UIScrollView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(self.label.frame), self.view.bounds.size.width, 300)];
    hs.pagingEnabled = YES;
    hs.delegate = self;
    [self.verticalScrol addSubview:hs];
    self.horizontalScrol = hs;
    hs.contentSize = CGSizeMake(sw*2, 300);
    
    UIImageView *imgv1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, sw, 300)];
    [self.horizontalScrol addSubview:imgv1];
    imgv1.image = [UIImage imageNamed:@"river.jpg"];
    imgv1.contentMode = UIViewContentModeScaleAspectFit;
    
    UIImageView *imgv2 = [[UIImageView alloc]initWithFrame:CGRectMake(sw, 0, sw, 300)];
    [self.horizontalScrol addSubview:imgv2];
    imgv2.image = [UIImage imageNamed:@"river.jpg"];
    imgv2.contentMode = UIViewContentModeScaleAspectFit;
    
    
    self.verticalScrol.contentSize = CGSizeMake(sw, CGRectGetMaxY(self.horizontalScrol.frame));
    self.verticalScrol.showsVerticalScrollIndicator = YES;
}



@end
