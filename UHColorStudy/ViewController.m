//
//  ViewController.m
//  UHColorStudy
//
//  Created by HanXiao on 15/12/22.
//  Copyright © 2015年 HanXiao. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+UIColor_Hex.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;

@property (weak, nonatomic) IBOutlet UIView *colorView;

@property (weak, nonatomic) IBOutlet UILabel *redLabel;
@property (weak, nonatomic) IBOutlet UILabel *greenLabel;
@property (weak, nonatomic) IBOutlet UILabel *blueLabel;

@property (weak, nonatomic) IBOutlet UITextField *hexColorText;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (IBAction)sliderMoved:(UISlider *)sender {
    [_colorView setBackgroundColor:[UIColor colorWithRed:_redSlider.value green:_greenSlider.value blue:_blueSlider.value alpha:1]];
    
    _redLabel.text = [NSString stringWithFormat:@"%.f", _redSlider.value * 255];
    _greenLabel.text = [NSString stringWithFormat:@"%.f", _greenSlider.value * 255];
    _blueLabel.text = [NSString stringWithFormat:@"%.f", _blueSlider.value * 255];
}


- (IBAction)changeColor:(id)sender {
    NSInteger intString = [self intFromHexString:_hexColorText.text];
    NSLog(@"HexColor: #%lx", intString);
    [_colorView setBackgroundColor:[UIColor colorWithHex:intString alpha:1]];
}
    

// NSString 转 16进制数
- (unsigned int)intFromHexString:(NSString *)hexStr {
    unsigned int hexInt = 0;
    // Create scanner
    NSScanner *scanner = [NSScanner scannerWithString:hexStr];
    // Tell scanner to skip the # character
    [scanner setCharactersToBeSkipped:[NSCharacterSet characterSetWithCharactersInString:@"#"]];
    // Scan hex value
    [scanner scanHexInt:&hexInt];
    return hexInt;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
