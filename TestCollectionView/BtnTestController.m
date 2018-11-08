//
//  BtnTestController.m
//  TestCollectionView
//
//  Created by yangbo on 2018/10/17.
//  Copyright © 2018年 yang. All rights reserved.
//

#import "BtnTestController.h"

@interface BtnTestController ()
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation BtnTestController


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
    UIStoryboard  *board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *VC = [board instantiateViewControllerWithIdentifier:@"ABD"];
    [self presentViewController:VC animated:YES completion:nil];
//    [self dismissViewControllerAnimated:YES completion: nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _btn.multipleTouchEnabled = NO;
    _btn.exclusiveTouch = YES;
    // Do any additional setup after loading the view from its nib.
}



@end
