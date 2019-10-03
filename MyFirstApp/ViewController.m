//
//  ViewController.m
//  MyFirstApp
//
//  Created by David Auza on 10/3/19.
//  Copyright © 2019 David Auza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)updateUI:(id)sender {
    NSString *startingString = @"Hello, Everybody!";
    if ([self.label.text isEqual:startingString]) {
        self.label.text = @"It worked!";
        [_button setTitle:@"Go Back!" forState:UIControlStateNormal];
    } else {
        self.label.text = startingString;
        [_button setTitle:@"Click Here!" forState:UIControlStateNormal];
    }
}


@end
