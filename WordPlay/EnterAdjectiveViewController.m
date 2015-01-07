//
//  EnterAbjectiveViewController.m
//  WordPlay
//
//  Created by Irwin Gonzales on 1/6/15.
//  Copyright (c) 2015 Irwin Gonzales. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "ResultsViewController.h"
#import "EnterNounViewController.h"
#import "EnterNameViewController.h"

@interface EnterAdjectiveViewController ()

@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;


@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

/* 
 
 We have to know if there is something typed in the adjectiveTextField so
 the "shouldPerformSegueWithIdentifier" (which is a boolean) only calls preparedForSegue if it's true.

*/

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.adjectiveTextField.text isEqualToString:@""]){
        return NO;
    } else {
        return YES;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterNounViewController *vc = segue.destinationViewController;
    vc.title = self.adjectiveTextField.text;
    vc.adj = self.adjectiveTextField.text;
    vc.name =self.name;
}


@end
