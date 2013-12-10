//
//  InterestUpdateViewController.m
//  NestEggIncome2
//
//  Created by Paul Newell on 11/18/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import "InterestUpdateViewController.h"

@interface InterestUpdateViewController ()

@end

@implementation InterestUpdateViewController
@synthesize loandb,txtIUSource,txtIUPayments,txtIUBalance,txtIURate,txtIUJan,txtIUFeb,txtIUMar,txtIUApr,txtIUMay,txtIUJun,txtIUJul,txtIUAug,txtIUSep,txtIUOct,txtIUNov,txtIUDec,scrollview,btnSave;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (self.loandb) {
        [self.txtIUSource setText:[self.loandb valueForKey:@"source"]];
        [self.txtIUPayments setText:[self.loandb valueForKey:@"payments"]];
        [self.txtIUJan setText:[self.loandb valueForKey:@"jan"]];
        [self.txtIUFeb setText:[self.loandb valueForKey:@"feb"]];
        [self.txtIUMar setText:[self.loandb valueForKey:@"mar"]];
        [self.txtIUApr setText:[self.loandb valueForKey:@"apr"]];
        [self.txtIUMay setText:[self.loandb valueForKey:@"may"]];
        [self.txtIUJun setText:[self.loandb valueForKey:@"jun"]];
        [self.txtIUAug setText:[self.loandb valueForKey:@"aug"]];
        [self.txtIUSep setText:[self.loandb valueForKey:@"sep"]];
        [self.txtIUOct setText:[self.loandb valueForKey:@"oct"]];
        [self.txtIUNov setText:[self.loandb valueForKey:@"nov"]];
        [self.txtIUDec setText:[self.loandb valueForKey:@"dec"]];
        
        [btnIUSave setTitle:@"Update" forState:UIControlStateNormal];
        
    }
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    // Do any additional setup after loading the view.
    // Do any additional setup after loading the view.
    
    
    
}
-(void)dismissKeyboard {
    [txtIUSource resignFirstResponder];
    [txtIUPayments resignFirstResponder];
    [txtIUJan resignFirstResponder];
    [txtIUFeb resignFirstResponder];
    [txtIUMar resignFirstResponder];
    [txtIUApr resignFirstResponder];
    [txtIUMay resignFirstResponder];
    [txtIUJun resignFirstResponder];
    [txtIUJul resignFirstResponder];
    [txtIUAug resignFirstResponder];
    [txtIUSep resignFirstResponder];
    [txtIUOct resignFirstResponder];
    [txtIUNov resignFirstResponder];
    [txtIUDec resignFirstResponder];
    
}
-(IBAction) doneEditing:(id) sender {
    [sender resignFirstResponder];
}

- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnSave:(id)sender {
    NSManagedObjectContext *context = [self managedObjectContext];
    int mo;
    NSString *OnorOff;
    if (self.loandb) {
        // Update existing device
        
        [self.loandb setValue:self.txtIUSource.text forKey:@"source"];
        [self.loandb setValue:self.txtIUPayments.text forKey:@"payments"];
        mo = [self.txtIUJan.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"jan"];
        mo = [self.txtIUFeb.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"feb"];
        mo = [self.txtIUMar.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"mar"];
        mo = [self.txtIUApr.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"apr"];
        mo = [self.txtIUMay.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"may"];
        mo = [self.txtIUJun.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"jun"];
        mo = [self.txtIUJul.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"jul"];
        mo = [self.txtIUAug.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"aug"];
        mo = [self.txtIUSep.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"sep"];
        mo = [self.txtIUOct.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"oct"];  mo = [self.txtIUPayments.text doubleValue];
        mo = [self.txtIUNov.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"nov"];
        mo = [self.txtIUDec.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"dec"];
        
        //interestrate.text=[[NSString alloc] initWithFormat:@"@%f", total];
    } else {
        // Create a new device
        NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"Tblinterest" inManagedObjectContext:context];
        [newDevice setValue:self.txtIUSource.text forKey:@"source"];
        [newDevice setValue:self.txtIUPayments.text forKey:@"payments"];
        [newDevice setValue:self.txtIUJan.text forKey:@"jan"];
        [newDevice setValue:self.txtIUFeb.text forKey:@"feb"];
        [newDevice setValue:self.txtIUMar.text forKey:@"mar"];
        [newDevice setValue:self.txtIUApr.text forKey:@"apr"];
        [newDevice setValue:self.txtIUMay.text forKey:@"may"];
        [newDevice setValue:self.txtIUJun.text forKey:@"jun"];
        [newDevice setValue:self.txtIUJul.text forKey:@"jul"];
        [newDevice setValue:self.txtIUAug.text forKey:@"aug"];
        [newDevice setValue:self.txtIUSep.text forKey:@"sep"];
        [newDevice setValue:self.txtIUOct.text forKey:@"oct"];
        [newDevice setValue:self.txtIUNov.text forKey:@"nov"];
        [newDevice setValue:self.txtIUDec.text forKey:@"dec"];
        mo = [self.txtIUJan.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"jan"];
        mo = [self.txtIUFeb.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"feb"];
        mo = [self.txtIUMar.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"mar"];
        mo = [self.txtIUApr.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"apr"];
        mo = [self.txtIUMay.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"may"];
        mo = [self.txtIUJun.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"jun"];
        mo = [self.txtIUJul.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"jul"];
        mo = [self.txtIUAug.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"aug"];
        mo = [self.txtIUSep.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"sep"];
        mo = [self.txtIUOct.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"oct"];  mo = [self.txtIUPayments.text doubleValue];
        mo = [self.txtIUNov.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"nov"];
        mo = [self.txtIUDec. text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"dec"];
        
        
    }
    NSError *error = nil;
    // Save the object to persistent store
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)btnIUSave:(id)sender {
}

-(IBAction)btnIUCancle:(id)sender:(id)sender
[self dismissViewControllerAnimated:YES completion:nil];



- (void)textFieldDidBeginEditing:(UITextField *)textField {
    CGPoint scrollPoint = CGPointMake(0, textField.frame.origin.y);
    [scrollview setContentOffset:scrollPoint animated:YES];
}
- (void)textFieldDidEndEditing:(UITextField *)textField {
    [scrollview setContentOffset:CGPointZero animated:YES];
}
- (void)textViewDidBeginEditing:(UITextView *)textView {
    CGPoint scrollPoint = CGPointMake(0, textView.frame.origin.y);
    [scrollview setContentOffset:scrollPoint animated:YES];
}
- (void)textViewDidEndEditing:(UITextView *)textView {
    [scrollview setContentOffset:CGPointZero animated:YES];
}






- (IBAction)btnIUCancle:(id)sender {
}
@end














































//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
 //   if (self) {
        // Custom initialization
 //   }
   // return self;
//}

//- (void)viewDidLoad
//{
   // [super viewDidLoad];
	// Do any additional setup after loading the view.
//}

//- (void)didReceiveMemoryWarning
//{
   // [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
//}

//- (IBAction)btnSave:(id)sender {
//}
//- (IBAction)btnCancel:(id)sender {
//}
//@end
