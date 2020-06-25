//
//  ViewController.m
//  Tipster
//
//  Created by admin on 6/24/20.
//  Copyright © 2020 Denzel Tovar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
}

- (IBAction)onEdit:(id)sender {
    double bill = [self.billField.text doubleValue];
    
    NSArray *percent = @[@(0.15), @(0.20), @(0.22)];
    
    double tipPercent = [percent[self.tipControl.selectedSegmentIndex] doubleValue];
    
    double tip  = tipPercent * bill;
    double total  = bill + tip;
    
    self.tipLabel.text = [NSString stringWithFormat: @"$%.2f", tip];
    
    self.totalLabel.text = [NSString stringWithFormat: @"$%2.f", total];
    
}



@end
