//
//  ViewController.m
//  TestCollectionView
//
//  Created by yangbo on 2018/10/12.
//  Copyright © 2018年 yang. All rights reserved.
//

#import "ViewController.h"
#import "LabelCollectionCell.h"
#import "YBFlowLayout.h"
#import "BtnTestController.h"

@interface ViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UIView *bgView;
@property (strong, nonatomic) NSArray *textArray;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIView *BGviEW;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _textArray = @[@"第一种项目/选择", @"第二个项目/选择", @"第三个项目/选择"];
    
    YBFlowLayout *layout = [[YBFlowLayout alloc] init];
//    layout.minimumLineSpacing = 10;
//    layout.minimumInteritemSpacing = 10;
    layout.estimatedItemSize = CGSizeMake(40, 50);
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 50) collectionViewLayout:layout];
    collectionView.backgroundColor = [UIColor whiteColor];
    collectionView.delegate = self;
    collectionView.dataSource = self;
    [collectionView registerClass:[LabelCollectionCell class] forCellWithReuseIdentifier:@"ID"];
    [_bgView addSubview:collectionView];
    
}


- (IBAction)clickDown:(id)sender {
    NSLog(@"点下");
//    _BGviEW.userInteractionEnabled = NO;
}
- (IBAction)dragInside:(id)sender {
    NSLog(@"拖进来");
}
- (IBAction)dragOutside:(id)sender {
    NSLog(@"拖出去");
}
- (IBAction)touchOutside:(id)sender {
    NSLog(@"在界面外松开");
}
- (IBAction)btnTouchCancel:(id)sender {
    NSLog(@"touchCancel");
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
//    [collectionView.collectionViewLayout invalidateLayout];
    return _textArray.count;
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    LabelCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ID" forIndexPath:indexPath];
    cell.titleLabel.text = _textArray[indexPath.item];
    return cell;
}
- (IBAction)btnclick:(id)sender {
    
    NSLog(@"dianjile ");
    _BGviEW.userInteractionEnabled = YES;
    BtnTestController *vc = [[BtnTestController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    NSLog(@"点击o屏幕");
//}
@end
