//
//  ViewController.m
//  FlatButtons
//
//  Created by Alex Mejicanos on 24/07/14.
//  Copyright (c) 2014 Alex Mejicanos. All rights reserved.
//

#import "ViewController.h"
#import "FlatButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    FlatButton *defaultbtn = [[FlatButton alloc] initWithFrame:CGRectMake(40 ,40, 100, 40) type:FBDefault];
    [defaultbtn setTitle:@"Default" forState:UIControlStateNormal];
    [self.view addSubview:defaultbtn];
    
    FlatButton *primarybtn = [[FlatButton alloc] initWithFrame:CGRectMake(40 ,90, 100, 40) type:FBPrimary];
    [primarybtn setTitle:@"Primary" forState:UIControlStateNormal];
    [self.view addSubview:primarybtn];
    
    FlatButton *successbtn = [[FlatButton alloc] initWithFrame:CGRectMake(40 ,140, 100, 40) type:FBSuccess];
    [successbtn setTitle:@"Success" forState:UIControlStateNormal];
    [self.view addSubview:successbtn];
    
    FlatButton *infobtn = [[FlatButton alloc] initWithFrame:CGRectMake(40 ,190, 100, 40) type:FBInfo];
    [infobtn setTitle:@"Info" forState:UIControlStateNormal];
    [self.view addSubview:infobtn];
    
    FlatButton *warningbtn = [[FlatButton alloc] initWithFrame:CGRectMake(40 ,240, 100, 40) type:FBWarning];
    [warningbtn setTitle:@"Warning" forState:UIControlStateNormal];
    [self.view addSubview:warningbtn];
    
    FlatButton *dangerbtn = [[FlatButton alloc] initWithFrame:CGRectMake(40 ,290, 100, 40) type:FBDanger];
    [dangerbtn setTitle:@"Danger" forState:UIControlStateNormal];
    [self.view addSubview:dangerbtn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
