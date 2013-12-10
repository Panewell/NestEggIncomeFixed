//
//  InterestUpdateViewController.h
//  NestEggIncome2
//
//  Created by Paul Newell on 11/18/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InterestUpdateViewController : UIViewController
@property (strong) NSManagedObject *loandb;

- (IBAction)btnSave:(id)sender;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *btnSave;
@property (strong, nonatomic) IBOutlet UITextField *txtIUSource;
@property (strong, nonatomic) IBOutlet UITextField *txtIUPayments;
@property (strong, nonatomic) IBOutlet UITextField *txtIUBalance;
@property (strong, nonatomic) IBOutlet UITextField *txtIURate;
@property (strong, nonatomic) IBOutlet UITextField *txtIUJan;
@property (strong, nonatomic) IBOutlet UITextField *txtIUFeb;
@property (strong, nonatomic) IBOutlet UITextField *txtIUMar;
@property (strong, nonatomic) IBOutlet UITextField *txtIUApr;
@property (strong, nonatomic) IBOutlet UITextField *txtIUMay;
@property (strong, nonatomic) IBOutlet UITextField *txtIUJun;
@property (strong, nonatomic) IBOutlet UITextField *txtIUJul;
@property (strong, nonatomic) IBOutlet UITextField *txtIUAug;
@property (strong, nonatomic) IBOutlet UITextField *txtIUSep;
@property (strong, nonatomic) IBOutlet UITextField *txtIUOct;
@property (strong, nonatomic) IBOutlet UITextField *txtIUNov;
@property (strong, nonatomic) IBOutlet UITextField *txtIUDec;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *btnIUCancel;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollview;
-(IBAction) doneEditing:(id)sender;

@end
