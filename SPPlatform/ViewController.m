//
//  ViewController.m
//  SPPlatform
//
//  Created by SotoPoul on 2017/3/27.
//  Copyright © 2017年 SotoPoul. All rights reserved.
//

#import "ViewController.h"

#import "UIDevice+SPPlatform.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

	self.lbl_DeviceName.text = [NSString stringWithFormat:@"设备类型名称:%@",[UIDevice platformString]];
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
