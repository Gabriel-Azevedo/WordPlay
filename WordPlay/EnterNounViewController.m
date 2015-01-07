//
//  EnterNounViewController.m
//  WordPlay
//
//  Created by Irwin Gonzales on 1/6/15.
//  Copyright (c) 2015 Irwin Gonzales. All rights reserved.
//

#import "EnterNounViewController.h"
#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNounViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nounTextField;

@end

@implementation EnterNounViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.nounTextField.text isEqualToString:@""]){
        return NO;
    } else {
        return YES;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterNounViewController *vc = segue.destinationViewController;
    vc.title = self.nounTextField.text;
    vc.noun = self.nounTextField.text;
    vc.name = self.name;
    vc.adj = self.adj;
    
}

@end
