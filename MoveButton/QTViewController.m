//
//  QTViewController.m
//  MoveButton
//
//  Created by 杨 宏强 on 12-12-30.
//  Copyright (c) 2012年 yanghongqiang. All rights reserved.
//

#import "QTViewController.h"
#import "QTMyButton.h"
@interface QTViewController ()

@end

@implementation QTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    QTMyButton*mybuton=[[QTMyButton alloc]initWithFrame:CGRectMake(120, 120, 68, 90)];
    mybuton.backgroundColor=[UIColor redColor];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(alert)];
    //加个初始化手势；
    [mybuton addGestureRecognizer:tap];
    
    
    [self.view addSubview:mybuton];
    
//
//    UIButton*button=[[UIButton alloc]initWithFrame:CGRectMake(120, 120, 68, 90)];
//    button.backgroundColor=[UIColor redColor];
//    [self.view addSubview:button];
//    [button addTarget:self action:@selector(alert) forControlEvents: UIControlEventTouchUpInside];
    
    }


-(void)alert{

    UIAlertView *aler=[[UIAlertView alloc]initWithTitle:@"show box" message:@"message" delegate:self cancelButtonTitle:nil otherButtonTitles:@"ok", nil];
    [aler show];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
