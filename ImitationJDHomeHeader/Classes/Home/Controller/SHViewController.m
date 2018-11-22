//
//  ViewController.m
//  ImitationJDHomeHeader
//
//  Created by joyshow on 2018/11/22.
//  Copyright © 2018年 石虎. All rights reserved.
//

#import "SHViewController.h"
#import "UINavigationBar+ChangeColor.h"
#import "SHBaseUI.h"

@interface SHViewController ()

@property(nonatomic,strong) SHBaseUI *sh_UI;
@end

@implementation SHViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self initBaseUI];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.navigationController.navigationBar start];
    [_sh_UI addScrollView:self.navigationController.navigationBar];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar reset];
}

- (void)initBaseUI {

    SHBaseUI *sh_UI = [[SHBaseUI alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), CGRectGetHeight([UIScreen mainScreen].bounds))];
    self.navigationItem.leftBarButtonItem = [sh_UI sh_leftItem];
    self.navigationItem.rightBarButtonItem = [sh_UI sh_rightItem];
    self.navigationItem.titleView = [sh_UI sh_titleView];
    [self.view addSubview:_sh_UI = sh_UI];
}



@end
