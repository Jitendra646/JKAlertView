//
//  ViewController.m
//  JKAlertView
//
//  Created by Jitendra on 21/02/15.
//  Copyright (c) 2015 Webastral. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ShowMessageAlert:(id)sender
{
    [JKAlertView showalertWithMessage:@"Custom message alert" title:@"Hello" cancelButtonTitle:@"Cancel" otherButtonTitles:@[@"Done",@"Thanks"] alertComplitionHandler:^(UIAlertView *alertView, NSInteger buttonIndex)
    {
        switch (buttonIndex) {
           
            case 1:
            {
                NSLog(@"Done");
            }
                break;
            case 2:
            {
                NSLog(@"Thanks");
            }
                break;
                
            default:
                NSLog(@"Cancel");
                break;
        }
    }];
}

- (IBAction)ShowSingleTextAlert:(id)sender
{
    [JKAlertView setplaceholderText:@"Enter email address"];
    [JKAlertView showAlertSingleInputWithMessage:@"Do you want to change password,so please enter the correct email address." title:@"Forgot Password!" style:UIAlertViewStylePlainTextInput cancelButtonTitle:@"Cancel" otherButtonTitles:@[@"Submit"] ComplitionHandlerSingleInputViewBlock:^(UIAlertView *alertView, NSString *text, NSInteger buttonIndex)
    {
        if (buttonIndex==alertView.firstOtherButtonIndex)
        {
            // call to custom method.
            
            NSLog(@"Email address==%@",text);
        }
        
    }];
}
- (IBAction)ShowLoginInputAlert:(id)sender
{
    [JKAlertView showAlertLoginInputWithMessage:@"Welcome,\n Please fill your login credential" title:@"User Login" cancelButtonTitle:@"Cancel" otherButtonTitles:@[@"Login"] ComplitionHandlerDoubleInputViewBlock:^(UIAlertView *alertView, NSString *Username, NSString *password, NSInteger buttonIndex)
    {
        if (buttonIndex==alertView.firstOtherButtonIndex)
        {
            NSLog(@"Username==%@\n Password==%@",Username,password);
        }
        
    }];
}

@end
