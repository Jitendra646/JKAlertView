
# JKAlertView



JKAlertView is a very friendly , user customise  alert with block method. 



There is no need to call delegate method of UIAlertView, Only User can call the JKAlertView Class Method for different functionality like, show only text message, Single textfield, or Login type textField.



Below Given Three Methods of Using according to need.



1.)// Login input field type alertView--



+(void)showAlertLoginInputWithMessage:(NSString*)message title:(NSString*)title  cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSArray *)otherButtonTitles ComplitionHandlerDoubleInputViewBlock:(JkAlertViewForDoubleInputCallback)doubleInputCallback;
For Example



[JKAlertView showAlertLoginInputWithMessage:@"Welcome,\n Please fill your login credential" title:@"User Login" cancelButtonTitle:@"Cancel" otherButtonTitles:@[@"Login"] ComplitionHandlerDoubleInputViewBlock:^(UIAlertView *alertView, NSString *Username, NSString *password, NSInteger buttonIndex)
    {
        if (buttonIndex==alertView.firstOtherButtonIndex)
        {
            NSLog(@"Username==%@\n Password==%@",Username,password);
        }
        
    }];











// ************ plain textTextField or SecureTextfield ************



2)// below this methods for plain textTextField or SecureTextfield UIAlertViewStyle 


+(void)setplaceholderText:(NSString*)placeholderText;



+(void)showAlertSingleInputWithMessage:(NSString*)message title:(NSString*)title  style:(UIAlertViewStyle)style cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSArray *)otherButtonTitles ComplitionHandlerSingleInputViewBlock:(JkAlertViewForSingleInputCallback)singleInputCallback;

For Example
——————
 [JKAlertView setplaceholderText:@"Enter email address"];
    [JKAlertView showAlertSingleInputWithMessage:@"Do you want to change password,so please enter the correct email address." title:@"Forgot Password!" style:UIAlertViewStylePlainTextInput cancelButtonTitle:@"Cancel" otherButtonTitles:@[@"Submit"] ComplitionHandlerSingleInputViewBlock:^(UIAlertView *alertView, NSString *text, NSInteger buttonIndex)
    {
        if (buttonIndex==alertView.firstOtherButtonIndex)
        {
            // call to custom method.
            
            NSLog(@"Email address==%@",text);
        }
        
    }];



/*************************** Message AlerView*************



3)// below  this Method for show custom message.



+(void)showalertWithMessage:(NSString*)message title:(NSString*)title cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSArray *)otherButtonTitles alertComplitionHandler:(JkAlertViewCallback)callBack;



For Example


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
