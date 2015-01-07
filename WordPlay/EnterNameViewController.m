//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Irwin Gonzales on 1/6/15.
//  Copyright (c) 2015 Irwin Gonzales. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNameViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

/*

 We have to know if there is something typed in the nameTextField so
 the "shouldPerformSegueWithIdentifier" (which is a boolean) only calls preparedForSegue if it's true.

 */

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.nameTextField.text isEqualToString:@""]){
        return NO;
    } else {
        return YES;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterAdjectiveViewController *vc = segue.destinationViewController;
    vc.title = self.nameTextField.text;
    vc.name = self.nameTextField.text;
}

@end
