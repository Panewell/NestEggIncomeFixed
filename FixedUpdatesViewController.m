//
//  FixedUpdatesViewController.m
//  NestEggIncome2
//
//  Created by Paul Newell on 11/18/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import "FixedUpdatesViewController.h"

@interface FixedUpdatesViewController ()

@end

@implementation FixedUpdatesViewController

<<<<<<< HEAD
@synthesize loandb, scrollview, btnFUSave, txtFUSource, txtFUAmount, txtFUJan, txtFUFeb, txtFUMar, txtFUApr, txtFUMay, txtFUJun, txtFUJul, txtFUAug, txtFUSep, txtFUOct, txtFUNov, txtFUDec;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
=======
@synthesize loandb,txtFUAmount,txtFUSource,txtFUJan,txtFUFeb,txtFUMar,txtFUApr,txtFUMay,txtFUJun,txtFUJul,txtFUAug,txtFUSep,txtFUOct,txtFUNov,txtFUDec,scrollview,btnFUSave;


    - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
>>>>>>> 86d28ddd131022feee8fc5e216b93b49f6c128bb
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
<<<<<<< HEAD
    if (self.loandb) {
        [self.txtFUSource setText:[self.loandb valueForKey:@"source"]];
        [self.txtFUAmount setText:[self.loandb valueForKey:@"paymentamount"]];
=======
    
    if (self.loandb) {
        [self.txtFUSource setText:[self.loandb valueForKey:@"source"]];
        [self.txtFUAmount setText:[self.loandb valueForKey:@"amount"]];
>>>>>>> 86d28ddd131022feee8fc5e216b93b49f6c128bb
        [self.txtFUJan setText:[self.loandb valueForKey:@"jan"]];
        [self.txtFUFeb setText:[self.loandb valueForKey:@"feb"]];
        [self.txtFUMar setText:[self.loandb valueForKey:@"mar"]];
        [self.txtFUApr setText:[self.loandb valueForKey:@"apr"]];
        [self.txtFUMay setText:[self.loandb valueForKey:@"may"]];
        [self.txtFUJun setText:[self.loandb valueForKey:@"jun"]];
<<<<<<< HEAD
        [self.txtFUJul setText:[self.loandb valueForKey:@"jul"]];
=======
>>>>>>> 86d28ddd131022feee8fc5e216b93b49f6c128bb
        [self.txtFUAug setText:[self.loandb valueForKey:@"aug"]];
        [self.txtFUSep setText:[self.loandb valueForKey:@"sep"]];
        [self.txtFUOct setText:[self.loandb valueForKey:@"oct"]];
        [self.txtFUNov setText:[self.loandb valueForKey:@"nov"]];
        [self.txtFUDec setText:[self.loandb valueForKey:@"dec"]];
<<<<<<< HEAD
       [btnFUSave setTitle:@"Update" forState:UIControlStateNormal];
       
=======
        
        //[btnFUSave setTitle:@"Update" forState:UIControlStateNormal];
        
>>>>>>> 86d28ddd131022feee8fc5e216b93b49f6c128bb
    }
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
}
<<<<<<< HEAD

=======
>>>>>>> 86d28ddd131022feee8fc5e216b93b49f6c128bb
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    // Do any additional setup after loading the view.
<<<<<<< HEAD
}

-(void)dismissKeyboard {
    [txtFUSource resignFirstResponder];
    [txtFUAmount resignFirstResponder];
    [txtFUJan resignFirstResponder];
    [txtFUFeb resignFirstResponder];
    [txtFUMar resignFirstResponder];
    [txtFUApr resignFirstResponder];
    [txtFUMay resignFirstResponder];
    [txtFUJun resignFirstResponder];
    [txtFUJul resignFirstResponder];
    [txtFUAug resignFirstResponder];
    [txtFUSep resignFirstResponder];
    [txtFUOct resignFirstResponder];
    [txtFUNov resignFirstResponder];
    [txtFUDec resignFirstResponder];
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
=======
    // Do any additional setup after loading the view.
    
    

>>>>>>> 86d28ddd131022feee8fc5e216b93b49f6c128bb
}
-(void)dismissKeyboard {
    [txtFUSource resignFirstResponder];
    [txtFUAmount resignFirstResponder];
    [txtFUJan resignFirstResponder];
    [txtFUFeb resignFirstResponder];
    [txtFUMar resignFirstResponder];
    [txtFUApr resignFirstResponder];
    [txtFUMay resignFirstResponder];
    [txtFUJun resignFirstResponder];
    [txtFUJul resignFirstResponder];
    [txtFUAug resignFirstResponder];
    [txtFUSep resignFirstResponder];
    [txtFUOct resignFirstResponder];
    [txtFUNov resignFirstResponder];
    [txtFUDec resignFirstResponder];

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

<<<<<<< HEAD
- (IBAction)btnFUSave:(id)sender {
=======
- (IBAction)btnSave:(id)sender {
>>>>>>> 86d28ddd131022feee8fc5e216b93b49f6c128bb
    NSManagedObjectContext *context = [self managedObjectContext];
    int mo;
    NSString *OnorOff;
    if (self.loandb) {
        // Update existing device
        
        [self.loandb setValue:self.txtFUSource.text forKey:@"source"];
<<<<<<< HEAD
        [self.loandb setValue:self.txtFUAmount.text forKey:@"paymentamount"];
=======
        [self.loandb setValue:self.txtFUAmount.text forKey:@"amount"];
>>>>>>> 86d28ddd131022feee8fc5e216b93b49f6c128bb
        mo = [self.txtFUJan.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"jan"];
        mo = [self.txtFUFeb.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"feb"];
        mo = [self.txtFUMar.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"mar"];
        mo = [self.txtFUApr.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"apr"];
        mo = [self.txtFUMay.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"may"];
        mo = [self.txtFUJun.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"jun"];
        mo = [self.txtFUJul.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"jul"];
        mo = [self.txtFUAug.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"aug"];
        mo = [self.txtFUSep.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"sep"];
        mo = [self.txtFUOct.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
<<<<<<< HEAD
        [self.loandb setValue:OnorOff forKey:@"oct"];
=======
        [self.loandb setValue:OnorOff forKey:@"oct"];  mo = [self.txtFUAmount.text doubleValue];
>>>>>>> 86d28ddd131022feee8fc5e216b93b49f6c128bb
        mo = [self.txtFUNov.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"nov"];
        mo = [self.txtFUDec.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [self.loandb setValue:OnorOff forKey:@"dec"];
        
        //interestrate.text=[[NSString alloc] initWithFormat:@"@%f", total];
    } else {
        // Create a new device
        NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"Tblfix" inManagedObjectContext:context];
        [newDevice setValue:self.txtFUSource.text forKey:@"source"];
<<<<<<< HEAD
        [newDevice setValue:self.txtFUAmount.text forKey:@"paymentamount"];
=======
        [newDevice setValue:self.txtFUAmount.text forKey:@"amount"];
>>>>>>> 86d28ddd131022feee8fc5e216b93b49f6c128bb
        [newDevice setValue:self.txtFUJan.text forKey:@"jan"];
        [newDevice setValue:self.txtFUFeb.text forKey:@"feb"];
        [newDevice setValue:self.txtFUMar.text forKey:@"mar"];
        [newDevice setValue:self.txtFUApr.text forKey:@"apr"];
        [newDevice setValue:self.txtFUMay.text forKey:@"may"];
        [newDevice setValue:self.txtFUJun.text forKey:@"jun"];
        [newDevice setValue:self.txtFUJul.text forKey:@"jul"];
        [newDevice setValue:self.txtFUAug.text forKey:@"aug"];
        [newDevice setValue:self.txtFUSep.text forKey:@"sep"];
        [newDevice setValue:self.txtFUOct.text forKey:@"oct"];
        [newDevice setValue:self.txtFUNov.text forKey:@"nov"];
        [newDevice setValue:self.txtFUDec.text forKey:@"dec"];
        mo = [self.txtFUJan.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"jan"];
        mo = [self.txtFUFeb.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"feb"];
        mo = [self.txtFUMar.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"mar"];
        mo = [self.txtFUApr.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"apr"];
        mo = [self.txtFUMay.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"may"];
        mo = [self.txtFUJun.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"jun"];
        mo = [self.txtFUJul.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"jul"];
        mo = [self.txtFUAug.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"aug"];
        mo = [self.txtFUSep.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"sep"];
        mo = [self.txtFUOct.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
<<<<<<< HEAD
        [newDevice setValue:OnorOff forKey:@"oct"];
        mo = [self.txtFUNov.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"nov"];
        mo = [self.txtFUDec.text doubleValue];
=======
        [newDevice setValue:OnorOff forKey:@"oct"];  mo = [self.txtFUAmount.text doubleValue];
        mo = [self.txtFUNov.text doubleValue];
        OnorOff = [[NSString alloc] initWithFormat:@"%d", mo];
        [newDevice setValue:OnorOff forKey:@"nov"];
        mo = [self.txtFUDec. text doubleValue];
>>>>>>> 86d28ddd131022feee8fc5e216b93b49f6c128bb
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

<<<<<<< HEAD


- (IBAction)btnFUCancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
=======
-(IBAction)btnFUCancle:(id)sender:(id)sender
 [self dismissViewControllerAnimated:YES completion:nil];

    
>>>>>>> 86d28ddd131022feee8fc5e216b93b49f6c128bb

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

<<<<<<< HEAD

@end
=======
    
    
    
    
    
- (IBAction)btnFUCancle:(id)sender {
}
    @end
>>>>>>> 86d28ddd131022feee8fc5e216b93b49f6c128bb
