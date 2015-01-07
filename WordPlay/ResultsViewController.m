//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Irwin Gonzales on 1/6/15.
//  Copyright (c) 2015 Irwin Gonzales. All rights reserved.
//

#import "ResultsViewController.h"
#import "EnterVerbViewController.h"

@interface ResultsViewController ()


@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;



@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.resultsTextView.attributedText = [self createStory];

    self.title = @"Your Story";
//        NSString *name = self.name ;
//        NSString *adj = self.adj ;
//        NSString *noun = self.noun ;
//        NSString *verb = self.verb ;
//        self.resultsTextView.text = [NSString stringWithFormat:@"One day, %@ was %@ into Mobile Makers when he noticed how %@ the %@ were.", name, verb, adj, noun];
}

-(NSMutableAttributedString *)createStory {

    NSMutableAttributedString *story = [[NSMutableAttributedString alloc] initWithAttributedString:[self makeAttributedNotBold:@"One day, "]];
    [story appendAttributedString:[self makeAttributedTextBold:self.name]];
    [story appendAttributedString:[self makeAttributedNotBold:@" was "]];
    [story appendAttributedString:[self makeAttributedTextBold:self.verb]];
    [story appendAttributedString:[self makeAttributedNotBold:@" into Mobile Makers when he noticed how "]];
    [story appendAttributedString:[self makeAttributedTextBold:self.adj]];
    [story appendAttributedString:[self makeAttributedNotBold:@" the "]];
    [story appendAttributedString:[self makeAttributedTextBold:self.noun]];
    [story appendAttributedString:[self makeAttributedNotBold:@" were."]];

    return story;
}

-(NSAttributedString *)makeAttributedTextBold:(NSString *)replacedString{

    NSAttributedString *atttString = [[NSAttributedString alloc]initWithString:replacedString
                                                                    attributes:@{NSFontAttributeName : [UIFont fontWithName:@"Helvetica-Bold" size:22.0]}];
    return atttString;

}

-(NSMutableAttributedString *)makeAttributedNotBold:(NSString *)replacedString{
    NSMutableAttributedString * attString = [[NSMutableAttributedString alloc] initWithString:replacedString];

    [attString addAttribute:NSFontAttributeName
                      value:[UIFont fontWithName:@"Helvetica" size:20.0]
                      range:NSMakeRange(0,replacedString.length)];

    return attString;
}

-(NSString* )stringReplacer:(NSRange)range {
    NSString *returnString = [@"" stringByPaddingToLength:range.length withString:@"-" startingAtIndex:0];
    return returnString;
}




@end
