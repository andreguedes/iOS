//
//  MeuPrimeiroViewController.m
//  BemVindo
//
//  Created by André Guedes on 18/12/15.
//  Copyright © 2015 André Ricardo de Souza Guedes. All rights reserved.
//

#import "MeuPrimeiroViewController.h"
#import "MeuSegundoViewController.h"

@implementation MeuPrimeiroViewController

#pragma mark - View lifecicle
- (void)viewDidLoad {
    meuPrimeiroLabel.text = @"Tela iniciada com sucesso!";
    
    self.title = @"Primeiro Controller";
    
    [super viewDidLoad];
    
    meuPrimeiroTextField.delegate = self;
    meuSegundoTextField.delegate = self;
    
    UIImage *image = [UIImage imageNamed:@"ferrari_ff.png"];
    imageView.image = image;
    
    UIBarButtonItem *btVoltar = [[UIBarButtonItem alloc] initWithTitle:@"Voltar" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.backBarButtonItem = btVoltar;
    
    self.navigationController.navigationBar.barTintColor = [UIColor brownColor];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
}

- (void)olaMundo:(id)sender {
    NSLog(@"Olá");
    
    if ([meuPrimeiroTextField.text isEqualToString:@""] || [meuSegundoTextField.text isEqualToString:@""]){
        UIAlertView *a =[[UIAlertView alloc] initWithTitle:@"Erro" message:@"Digite todos os campos" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [a show];
        return;
    }
    
    NSString *s = @"Olá ";
    s = [s stringByAppendingString:meuPrimeiroTextField.text];
    s = [s stringByAppendingString:@" "];
    s = [s stringByAppendingString:meuSegundoTextField.text];
    meuPrimeiroLabel.text = s;
    
    MeuSegundoViewController *segundo = [[MeuSegundoViewController alloc] init];
    segundo.msg = s;
    segundo.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    //[self presentViewController:segundo animated:YES completion:nil];
    
    [self.navigationController pushViewController:segundo animated:YES];
}

- (void)sliderValueChanged:(id)sender {
    UISlider *slider = sender;
    imageView.alpha = [slider value];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [meuPrimeiroTextField resignFirstResponder];
    [meuSegundoTextField resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == meuPrimeiroTextField) {
        [meuSegundoTextField becomeFirstResponder];
        return YES;
    } else if (textField == meuSegundoTextField) {
        [self olaMundo:textField];
        return YES;
    }
    return NO;
}

@end
