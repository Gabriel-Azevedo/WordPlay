//
//  EnterVerbViewController.m
//  WordPlay
//
//  Created by Irwin Gonzales on 1/6/15.
//  Copyright (c) 2015 Irwin Gonzales. All rights reserved.
//

#import "EnterVerbViewController.h"
#import "EnterNounViewController.h"
#import "EnterVerbViewController.h"

@interface EnterVerbViewController ()


@property (weak, nonatomic) IBOutlet UITextField *verbTextField;

@end

@implementation EnterVerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.verbTextField.text isEqualToString:@""]){
        return NO;
    } else {
        return YES;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterVerbViewController *vc = segue.destinationViewController;
    vc.title = self.verbTextField.text;
    vc.verb = self.verbTextField.text;
    vc.noun = self.noun;
    vc.name = self.name;
    vc.adj = self.adj;



}


@end
