//
//  FlatButton.m
//  FlatButtons
//
//  Created by Alex Mejicanos on 24/07/14.
//  Copyright (c) 2014 Alex Mejicanos. All rights reserved.
//

#import "FlatButton.h"
#import <QuartzCore/QuartzCore.h>

@implementation FlatButton
@synthesize fbuttonType, titleFButton;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    frameBtn = frame;
    if (self) {
        // Initialization code
    }
    return self;
}

-(id)initWithFrame:(CGRect)frame type:(FButtonType)buttonType
{
    self = [super initWithFrame:frame];
    frameBtn = frame;
    if (self)
    {
        fbuttonType = buttonType;
        [self setupButton];
    }
    
    return self;
}

/*
    With this method we create an image from a color
*/

-(UIImage *)imageWithColorToButton:(UIColor *)color
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

/*
 SetupButton is the method for configuring the buttons according to its FButtonType
*/

-(void)setupButton
{
    switch (self.fbuttonType) {
        case FBDefault:
            [self setBackgroundImage:[self imageWithColorToButton:[UIColor whiteColor]] forState:UIControlStateNormal];
            [self setBackgroundImage:[self imageWithColorToButton:[UIColor colorWithRed:230.0f/255 green:230.0f/255 blue:230.0f/255 alpha:1]] forState:UIControlStateHighlighted];
            [self setTitleColor:[UIColor colorWithRed:51.0f/255 green:51.0f/255 blue:51.0f/255 alpha:1] forState:UIControlStateNormal];
            [self setTitleColor:[UIColor colorWithRed:77.0f/255 green:51.0f/255 blue:51.0f/255 alpha:1] forState:UIControlStateNormal];
            self.layer.borderColor = [UIColor colorWithRed:162.0f/255 green:162.0f/255 blue:162.0f/255 alpha:1].CGColor;
            self.layer.borderWidth = 1;
            break;
        case FBPrimary:
            [self setBackgroundImage:[self imageWithColorToButton:[UIColor colorWithRed:70.0f/255 green:138.0f/255 blue:207.0f/255 alpha:1]] forState:UIControlStateNormal];
            [self setBackgroundImage:[self imageWithColorToButton:[UIColor colorWithRed:51.0f/255 green:112.0f/255 blue:173.0f/255 alpha:1]] forState:UIControlStateHighlighted];
            [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            self.layer.borderColor = [UIColor colorWithRed:57.0f/255 green:125.0f/255 blue:194.0f/255 alpha:1].CGColor;
            self.layer.borderWidth = 1;
            break;
        case FBSuccess:
            [self setBackgroundImage:[self imageWithColorToButton:[UIColor colorWithRed:102.0f/255 green:184.0f/255 blue:77.0f/255 alpha:1]] forState:UIControlStateNormal];
            [self setBackgroundImage:[self imageWithColorToButton:[UIColor colorWithRed:78.0f/255 green:157.0f/255 blue:51.0f/255 alpha:1]] forState:UIControlStateHighlighted];
            [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            self.layer.borderColor = [UIColor colorWithRed:87.0f/255 green:174.0f/255 blue:58.0f/255 alpha:1].CGColor;
            self.layer.borderWidth = 1;
            break;
        case FBInfo:
            [self setBackgroundImage:[self imageWithColorToButton:[UIColor colorWithRed:99.0f/255 green:191.0f/255 blue:225.0f/255 alpha:1]] forState:UIControlStateNormal];
            [self setBackgroundImage:[self imageWithColorToButton:[UIColor colorWithRed:63.0f/255 green:175.0f/255 blue:217.0f/255 alpha:1]] forState:UIControlStateHighlighted];
            [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            self.layer.borderColor = [UIColor colorWithRed:80.0f/255 green:183.0f/255 blue:221.0f/255 alpha:1].CGColor;
            self.layer.borderWidth = 1;
            break;
        case FBWarning:
            [self setBackgroundImage:[self imageWithColorToButton:[UIColor colorWithRed:238.0f/255 green:174.0f/255 blue:56.0f/255 alpha:1]] forState:UIControlStateNormal];
            [self setBackgroundImage:[self imageWithColorToButton:[UIColor colorWithRed:233.0f/255 green:152.0f/255 blue:0.0f/255 alpha:1]] forState:UIControlStateHighlighted];
            [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            self.layer.borderColor = [UIColor colorWithRed:235.0f/255 green:163.0f/255 blue:4.0f/255 alpha:1].CGColor;
            self.layer.borderWidth = 1;
            break;
        case FBDanger:
            [self setBackgroundImage:[self imageWithColorToButton:[UIColor colorWithRed:212.0f/255 green:84.0f/255 blue:76.0f/255 alpha:1]] forState:UIControlStateNormal];
            [self setBackgroundImage:[self imageWithColorToButton:[UIColor colorWithRed:193.0f/255 green:49.0f/255 blue:38.0f/255 alpha:1]] forState:UIControlStateHighlighted];
            [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            self.layer.borderColor = [UIColor colorWithRed:199.0f/255 green:63.0f/255 blue:52.0f/255 alpha:1].CGColor;
            self.layer.borderWidth = 1;
            break;
        default:
            [self setBackgroundImage:[self imageWithColorToButton:[UIColor whiteColor]] forState:UIControlStateNormal];
            [self setBackgroundImage:[self imageWithColorToButton:[UIColor colorWithRed:230.0f/255 green:230.0f/255 blue:230.0f/255 alpha:1]] forState:UIControlStateHighlighted];
            [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            self.layer.borderColor = [UIColor colorWithRed:162.0f/255 green:162.0f/255 blue:162.0f/255 alpha:1].CGColor;
            self.layer.borderWidth = 1;
            break;
    }
    self.layer.cornerRadius = 4;
    self.layer.masksToBounds = YES;
}


























@end
