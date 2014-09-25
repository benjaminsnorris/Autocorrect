//
//  ACPagingViewController.m
//  Autocorrect
//
//  Created by Ben Norris on 9/24/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "ACPagingViewController.h"

@interface ACPagingViewController ()

@property (nonatomic, assign) NSInteger count;

@end

@implementation ACPagingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.count = 10;
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scrollView];
    
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width * self.count, self.view.frame.size.height);
    scrollView.pagingEnabled = YES;
    
    NSArray *images = @[@"dolphin", @"turtle", @"bat", @"chicken", @"cow", @"gorilla", @"octopus", @"pig", @"pizza", @"rabbit"];
    
    for(int i=0; i<self.count; i++) {
        UIImage *image = [UIImage imageNamed:images[i]];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.frame = CGRectMake(i * self.view.frame.size.width + 20, 20, self.view.frame.size.width - 40, self.view.frame.size.height - 40);
        imageView.contentMode = UIViewContentModeCenter;
        [scrollView addSubview:imageView];
    }
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
