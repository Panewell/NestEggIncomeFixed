//
//  SummaryViewController.h
//  NestEggIncome2
//
//  Created by Paul Newell on 11/18/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NestEggIncome2AppDelegate.h"

@interface SummaryViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtMonth;
@property (weak, nonatomic) IBOutlet UITextField *txtFixInc;
@property (weak, nonatomic) IBOutlet UITextField *txtIntBal;
@property (weak, nonatomic) IBOutlet UITextField *txtIntInc;
@property (weak, nonatomic) IBOutlet UITextField *txtDivVal;
@property (weak, nonatomic) IBOutlet UITextField *txtDivInc;
@property (weak, nonatomic) IBOutlet UITextField *txtTotBal;
@property (weak, nonatomic) IBOutlet UITextField *txtTotInc;

@end
