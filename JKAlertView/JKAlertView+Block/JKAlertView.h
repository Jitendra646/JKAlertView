//
//  JKAlertView.h
//  UIAlertViewBlocks
//
//  Created by Jitendra on 20/02/15.
//  Copyright (c) 2015 Ryan Maxwell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIAlertView+Blocks.h"
typedef void (^JkAlertViewForDoubleInputCallback)(UIAlertView * alertView, NSString * Username, NSString * password, NSInteger buttonIndex);
typedef void (^JkAlertViewForSingleInputCallback)(UIAlertView * alertView, NSString * text, NSInteger buttonIndex);
typedef void (^JkAlertViewCallback)(UIAlertView * alertView, NSInteger buttonIndex);

@interface JKAlertView : NSObject

@property(strong,nonatomic)NSString * placeholderText;
+ (JKAlertView *)shared;

+(void)showAlertLoginInputWithMessage:(NSString*)message title:(NSString*)title  cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSArray *)otherButtonTitles ComplitionHandlerDoubleInputViewBlock:(JkAlertViewForDoubleInputCallback)doubleInputCallback;

+(void)showAlertSingleInputWithMessage:(NSString*)message title:(NSString*)title  style:(UIAlertViewStyle)style cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSArray *)otherButtonTitles ComplitionHandlerSingleInputViewBlock:(JkAlertViewForSingleInputCallback)singleInputCallback;

+(void)showalertWithMessage:(NSString*)message title:(NSString*)title cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSArray *)otherButtonTitles alertComplitionHandler:(JkAlertViewCallback)callBack;
+(void)setplaceholderText:(NSString*)placeholderText;
@end
