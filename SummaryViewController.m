//
//  SummaryViewController.m
//  NestEggIncome2
//
//  Created by Paul Newell on 11/18/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import "SummaryViewController.h"

@interface SummaryViewController ()

@end

@implementation SummaryViewController
@synthesize txtMonth, txtFixInc, txtIntBal, txtIntInc, txtDivVal, txtDivInc, txtTotBal, txtTotInc;

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
	// Do any additional setup after loading the view.
}

- (NSManagedObjectContext *)managedObjectContext
{
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self loadfixedtotals];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) loadfixedtotals
{
    NSString *MpaymentAmount;
    double totalb=0;
    // Fetch the devices from persistent data store
    NSManagedObjectContext *managedObjectContext = [self managedObjectContext];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Tblfix"];
    //NSManagedObject *matches = nil;
    NSArray *objects= [[managedObjectContext executeFetchRequest:fetchRequest error:nil] mutableCopy];
    for (NSObject* o in objects)
    {
        NSLog(@"%@",o);
        txtFixInc.text = [o valueForKeyPath:strMonthAbbrev];
        MpaymentAmount = [o valueForKeyPath:@"paymentamount"];
        if ([txtFixInc.text doubleValue] == 1)
        {
            totalb=totalb +[MpaymentAmount doubleValue];
        }
        
    }
    // matches = objects[0];
    // totalbalance.text = [matches valueForKeyPath:@"balanceinput"];
    txtFixInc.text = [NSString stringWithFormat:@"%.2f",totalb];
    txtTotInc.text = [NSString stringWithFormat:@"%.2f",totalb];
    txtMonth.text=strMonthTitle;
    NSLog(@"totalbalance: %f", totalb);
}

@end
