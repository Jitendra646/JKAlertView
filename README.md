# JKAlertView
JKAlertView is a very friendly , user customise  alert with block method. 
There is no need to call delegate method of UIAlertView, Only User can call the JKAlertView Class Method for different functionality like, show only text message, Single textfield, or Login type textField.
Blow Given Three Methods of Using according to need.
1.)// Login input field type alertView--

+(void)showAlertLoginInputWithMessage:(NSString*)message title:(NSString*)title  cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSArray *)otherButtonTitles ComplitionHandlerDoubleInputViewBlock:(JkAlertViewForDoubleInputCallback)doubleInputCallback;


// ************ plain textTextField or SecureTextfield ************
2)// below this methods for plain textTextField or SecureTextfield UIAlertViewStyle 
// 
+(void)setplaceholderText:(NSString*)placeholderText;
+(void)showAlertSingleInputWithMessage:(NSString*)message title:(NSString*)title  style:(UIAlertViewStyle)style cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSArray *)otherButtonTitles ComplitionHandlerSingleInputViewBlock:(JkAlertViewForSingleInputCallback)singleInputCallback;
/*************************** Message AlerView*************
3)// below  this Method for show custom message.
+(void)showalertWithMessage:(NSString*)message title:(NSString*)title cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSArray *)otherButtonTitles alertComplitionHandler:(JkAlertViewCallback)callBack;

