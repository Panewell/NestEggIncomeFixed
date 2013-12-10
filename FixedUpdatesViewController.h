//
//  FixedUpdatesViewController.h
//  NestEggIncome2
//
//  Created by Paul Newell on 11/18/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FixedUpdatesViewController : UIViewController
@property (strong) NSManagedObject *loandb;
<<<<<<< HEAD

- (IBAction)btnFUSave:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnFUSave;

@property (weak, nonatomic) IBOutlet UITextField *txtFUSource;
@property (weak, nonatomic) IBOutlet UITextField *txtFUAmount;
@property (weak, nonatomic) IBOutlet UITextField *txtFUJan;
@property (weak, nonatomic) IBOutlet UITextField *txtFUFeb;
@property (weak, nonatomic) IBOutlet UITextField *txtFUMar;
@property (weak, nonatomic) IBOutlet UITextField *txtFUApr;
@property (weak, nonatomic) IBOutlet UITextField *txtFUMay;
@property (weak, nonatomic) IBOutlet UITextField *txtFUJun;
@property (weak, nonatomic) IBOutlet UITextField *txtFUJul;
@property (weak, nonatomic) IBOutlet UITextField *txtFUAug;
@property (weak, nonatomic) IBOutlet UITextField *txtFUSep;
@property (weak, nonatomic) IBOutlet UITextField *txtFUOct;
@property (weak, nonatomic) IBOutlet UITextField *txtFUNov;
@property (weak, nonatomic) IBOutlet UITextField *txtFUDec;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollview;
- (IBAction)btnFUCancel:(UIBarButtonItem *)sender;

=======
@property (strong, nonatomic) IBOutlet UIBarButtonItem *btnSave;

- (IBAction)btnSave:(id)sender;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *btnFUSave;
@property (strong, nonatomic) IBOutlet UITextField *txtFUSource;
@property (strong, nonatomic) IBOutlet UITextField *txtFUAmount;
@property (strong, nonatomic) IBOutlet UITextField *txtFUJan;
@property (strong, nonatomic) IBOutlet UITextField *txtFUFeb;
@property (strong, nonatomic) IBOutlet UITextField *txtFUMar;
@property (strong, nonatomic) IBOutlet UITextField *txtFUApr;
@property (strong, nonatomic) IBOutlet UITextField *txtFUMay;
@property (strong, nonatomic) IBOutlet UITextField *txtFUJun;
@property (strong, nonatomic) IBOutlet UITextField *txtFUJul;
@property (strong, nonatomic) IBOutlet UITextField *txtFUAug;
@property (strong, nonatomic) IBOutlet UITextField *txtFUSep;
@property (strong, nonatomic) IBOutlet UITextField *txtFUOct;
@property (strong, nonatomic) IBOutlet UITextField *txtFUNov;
@property (strong, nonatomic) IBOutlet UITextField *txtFUDec;
- (IBAction)btnFUCancle:(id)sender;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollview;
-(IBAction) doneEditing:(id) sender;

//@property (weak, nonatomic) IBOutlet UITextField *txtFUBalance;
//@property (weak, nonatomic) IBOutlet UITextField *txtFURate;

>>>>>>> 86d28ddd131022feee8fc5e216b93b49f6c128bb
@end
