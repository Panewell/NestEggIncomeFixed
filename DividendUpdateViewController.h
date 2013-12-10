//
//  DividendUpdateViewController.h
//  NestEggIncome2
//
//  Created by Paul Newell on 11/18/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DividendUpdateViewController : UIViewController
@property (strong) NSManagedObject *loandb;


- (IBAction)btnDUSave:(id)sender;

@property (strong, nonatomic) IBOutlet UIBarButtonItem *btnDUSave;
@property (strong, nonatomic) IBOutlet UITextField *txtDUSymbol;
@property (strong, nonatomic) IBOutlet UITextField *txtDUShares;
@property (strong, nonatomic) IBOutlet UITextField *txtDUJan;
@property (strong, nonatomic) IBOutlet UITextField *txtDUFeb;
@property (strong, nonatomic) IBOutlet UITextField *txtDUMar;
@property (strong, nonatomic) IBOutlet UITextField *txtDUApr;
@property (strong, nonatomic) IBOutlet UITextField *txtDUMay;
@property (strong, nonatomic) IBOutlet UITextField *txtDUJun;
@property (strong, nonatomic) IBOutlet UITextField *txtDUJul;
@property (strong, nonatomic) IBOutlet UITextField *txtDUAug;
@property (strong, nonatomic) IBOutlet UITextField *txtDUSep;
@property (strong, nonatomic) IBOutlet UITextField *txtDUOct;
@property (strong, nonatomic) IBOutlet UITextField *txtDUNov;
@property (strong, nonatomic) IBOutlet UITextField *txtDUDec;
- (IBAction)btnDUCancle:(id)sender;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollview;
-(IBAction) doneEditing:(id) sender;
@end









//@property (weak, nonatomic) IBOutlet UITextField *txtDUSource;
//@property (weak, nonatomic) IBOutlet UITextField *txtDUPayments;
//@property (weak, nonatomic) IBOutlet UITextField *txtDUBalance;
//@property (weak, nonatomic) IBOutlet UITextField *txtDURate;
//@property (weak, nonatomic) IBOutlet UITextField *txtDUJan;
//@property (weak, nonatomic) IBOutlet UITextField *txtDUFeb;
//@property (weak, nonatomic) IBOutlet UITextField *txtDUMar;
//@property (weak, nonatomic) IBOutlet UITextField *txtDUApr;
//@property (weak, nonatomic) IBOutlet UITextField *txtDUMay;
//@property (weak, nonatomic) IBOutlet UITextField *txtDUJun;
//@property (weak, nonatomic) IBOutlet UITextField *txtDUJul;
//@property (weak, nonatomic) IBOutlet UITextField *txtDUAug;
//@property (weak, nonatomic) IBOutlet UITextField *txtDUSep;
//@property (weak, nonatomic) IBOutlet UITextField *txtDUOct;
//@property (weak, nonatomic) IBOutlet UITextField *txtDUNov;
//@property (weak, nonatomic) IBOutlet UITextField *txtDUDec;

