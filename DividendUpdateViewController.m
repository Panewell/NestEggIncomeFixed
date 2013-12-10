//
//  DividendUpdateViewController.m
//  NestEggIncome2
//
//  Created by Paul Newell on 11/18/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import "DividendUpdateViewController.h"

@interface DividendUpdateViewController ()

@end

@implementation DividendUpdateViewController
@synthesize loandb,txtDUSymbol,txtDUShares,txtDUJan,txtDUFeb,txtDUMar,txtDUApr,txtDUMay,txtDUJun,txtDUJul,txtDUAug,txtDUSep,txtDUOct,txtDUNov,txtDUDec,scrollview,btnDUSave;


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
        [self.txtDUSymbol setText:[self.loandb valueForKey:@"symbol"]];
        [self.txtDUShares setText:[self.loandb valueForKey:@"shares"]];
        [self.txtDUJan setText:[self.loandb valueForKey:@"jan"]];
        [self.txtDUFeb setText:[self.loandb valueForKey:@"feb"]];
        [self.txtDUMar setText:[self.loandb valueForKey:@"mar"]];
        [self.txtDUApr setText:[self.loandb valueForKey:@"apr"]];
        [self.txtDUMay setText:[self.loandb valueForKey:@"may"]];
        [self.txtDUJun setText:[self.loandb valueForKey:@"jun"]];
        [self.txtDUAug setText:[self.loandb valueForKey:@"aug"]];
        [self.txtDUSep setText:[self.loandb valueForKey:@"sep"]];
        [self.txtDUOct setText:[self.loandb valueForKey:@"oct"]];
        [self.txtDUNov setText:[self.loandb valueForKey:@"nov"]];
        [self.txtDUDec setText:[self.loandb valueForKey:@"dec"]];
        
        [btnDUSave setTitle:@"Update" forState:UIControlStateNormal];
        
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
    [txtDUSymbol resignFirstResponder];
    [txtDUShares resignFirstResponder];
    [txtDUJan resignFirstResponder];
    [txtDUFeb resignFirstResponder];
    [txtDUMar resignFirstResponder];
    [txtDUApr resignFirstResponder];
    [txtDUMay resignFirstResponder];
    [txtDUJun resignFirstResponder];
    [txtDUJul resignFirstResponder];
    [txtDUAug resignFirstResponder];
    [txtDUSep resignFirstResponder];
    [txtDUOct resignFirstResponder];
    [txtDUNov resignFirstResponder];
    [txtDUDec resignFirstResponder];
    
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

- (IBAction)btnDUSave:(id)sender {
    NSManagedObjectContext *context = [self managedObjectContext];
    int mo;
    NSString *OnorOff;
    if (self.loandb) {
        // Update existing device
        
        [self.loandb setValue:self.txtDUSymbol.text forKey:@"symbol"];
        [self.loandb setValue:self.txtDUShares.text forKey:@"shares"];
        mo = [self.txtDUJan.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"jan"];
        mo = [self.txtDUFeb.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"feb"];
        mo = [self.txtDUMar.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"mar"];
        mo = [self.txtDUApr.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"apr"];
        mo = [self.txtDUMay.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"may"];
        mo = [self.txtDUJun.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"jun"];
        mo = [self.txtDUJul.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"jul"];
        mo = [self.txtDUAug.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"aug"];
        mo = [self.txtDUSep.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"sep"];
        mo = [self.txtDUOct.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"oct"];  mo = [self.txtDUSharess.text doubleValue];
        mo = [self.txtDUNov.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"nov"];
        mo = [self.txtDUDec.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"dec"];
        
        //interestrate.text=[[NSString alloc] initWithFormat:@"@%f", total];
    } else {
        // Create a new device
        NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"Tbldividends" inManagedObjectContext:context];
        [newDevice setValue:self.txtDUSymbol.text forKey:@"symbol"];
        [newDevice setValue:self.txtDUShares.text forKey:@"shares"];
        [newDevice setValue:self.txtDUJan.text forKey:@"jan"];
        [newDevice setValue:self.txtDUFeb.text forKey:@"feb"];
        [newDevice setValue:self.txtDUMar.text forKey:@"mar"];
        [newDevice setValue:self.txtDUApr.text forKey:@"apr"];
        [newDevice setValue:self.txtDUMay.text forKey:@"may"];
        [newDevice setValue:self.txtDUJun.text forKey:@"jun"];
        [newDevice setValue:self.txtDUJul.text forKey:@"jul"];
        [newDevice setValue:self.txtDUAug.text forKey:@"aug"];
        [newDevice setValue:self.txtDUSep.text forKey:@"sep"];
        [newDevice setValue:self.txtDUOct.text forKey:@"oct"];
        [newDevice setValue:self.txtDUNov.text forKey:@"nov"];
        [newDevice setValue:self.txtDUDec.text forKey:@"dec"];
        mo = [self.txtDUJan.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"jan"];
        mo = [self.txtDUFeb.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"feb"];
        mo = [self.txtDUMar.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"mar"];
        mo = [self.txtDUApr.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"apr"];
        mo = [self.txtDUMay.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"may"];
        mo = [self.txtDUJun.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"jun"];
        mo = [self.txtDUJul.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"jul"];
        mo = [self.txtDUAug.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"aug"];
        mo = [self.txtDUSep.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"sep"];
        mo = [self.txtDUOct.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"oct"];  mo = [self.txtDUShares.text doubleValue];
        mo = [self.txtDUNov.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"nov"];
        mo = [self.txtDUDec. text doubleValue];
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

-(IBAction)btnDUCancle:(id)sender:(id)sender
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






- (IBAction)btnDUCancle:(id)sender {
}
@end



































//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
 //   if (self) {
//        // Custom initialization
//    }
 //   return self;
//}

//- (void)viewDidLoad
//{
//    [super viewDidLoad];
	// Do any additional setup after loading the view.
//}

//{
  //  [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
//}

//- (IBAction)btn:(id)sender {
//}
//- (IBAction)btnDUSave:(id)sender {
//}
//- (IBAction)btnDUCancle:(id)sender {
//}
//@end
