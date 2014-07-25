//
//  FlatButton.h
//  FlatButtons
//
//  Created by Alex Mejicanos on 24/07/14.
//  Copyright (c) 2014 Alex Mejicanos. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, FButtonType){
    /* Style default button */
    FBDefault = 0,
    /* Style primary button */
    FBPrimary,
    /* Style success button */
    FBSuccess,
    /* Style info button */
    FBInfo,
    /* Style warning button */
    FBWarning,
    /* Style danger button */
    FBDanger
};

@interface FlatButton : UIButton 
{
    FButtonType fbuttonType;
    NSString *titleFButton;
    CGRect frameBtn;
}

//Returns a new initialized `FlatButton` instance
-(id)initWithFrame:(CGRect)frame;

//Returns a new initialized `FlatButton` instance
-(id)initWithFrame:(CGRect)frame type:(FButtonType )buttonType;

//Metho to setup de button
-(void)setupButton;

//FButtonType
@property (nonatomic, readonly) FButtonType fbuttonType;
//Title
@property (nonatomic, strong) NSString *titleFButton;
@end
