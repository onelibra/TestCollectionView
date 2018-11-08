//
//  StoryBoardController.m
//  TestCollectionView
//
//  Created by yangbo on 2018/10/17.
//  Copyright © 2018年 yang. All rights reserved.
//

#import "StoryBoardController.h"

@interface StoryBoardController ()

@end

@implementation StoryBoardController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)btnTouchDown:(id)sender {
    NSLog(@"1--btnTouchDown");
}
- (IBAction)btnTouchDownRepeat:(id)sender {
    NSLog(@"2--btnTouchDownRepeat");
}
- (IBAction)btnTouchDragEnter:(id)sender {
    NSLog(@"3--btnTouchDragEnter");
}
- (IBAction)btnTouchDragExit:(id)sender {
    NSLog(@"4--btnTouchDragExit");
}
- (IBAction)btnTouchDragInside:(id)sender {
    NSLog(@"5--btnTouchDragInside");
}
- (IBAction)btnTouchDragOutside:(id)sender {
    NSLog(@"6--btnTouchDragOutside");
}
- (IBAction)btnTouchupOutside:(id)sender {
    NSLog(@"7--btnTouchupOutside");
}
- (IBAction)btnTouchupInside:(id)sender {

    NSLog(@"8--btnTouchupInside");
}
- (IBAction)btnTouchCancel:(id)sender {
    NSLog(@"9--btnTouchCancel");
    [self dismissViewControllerAnimated:YES completion: nil];
}

@end
