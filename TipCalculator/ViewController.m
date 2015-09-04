//
//  ViewController.m
//  TipCalculator
//
//  Created by Katherine Peterson on 2015-09-04.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (strong, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (strong, nonatomic) IBOutlet UILabel *tipPercentageLabel;
@property (strong, nonatomic) IBOutlet UISlider *tipPercentageSlider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)chooseTipPercent:(UISlider *)sender {
    float bill = [self.billAmountTextField.text floatValue];
    
    float tip = bill * sender.value/100;
    NSString *tipFormatted = [NSString stringWithFormat:@"%.02f", tip];
    self.tipAmountLabel.text = [@"$" stringByAppendingString:tipFormatted];
    self.tipPercentageLabel.text = [[NSString stringWithFormat:@"%.0f", sender.value] stringByAppendingString:@"%"];
}

- (IBAction)typeBillAmount:(UITextField *)sender {
    float bill = [sender.text floatValue];
    
    float tip = bill * self.tipPercentageSlider.value/100;
    NSString *tipFormatted = [NSString stringWithFormat:@"%.02f", tip];
    self.tipAmountLabel.text = [@"$" stringByAppendingString:tipFormatted];
}

@end
