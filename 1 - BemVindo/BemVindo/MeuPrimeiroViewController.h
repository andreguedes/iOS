//
//  MeuPrimeiroViewController.h
//  BemVindo
//
//  Created by André Guedes on 18/12/15.
//  Copyright © 2015 André Ricardo de Souza Guedes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MeuPrimeiroViewController : UIViewController  <UITextFieldDelegate> {

    IBOutlet UILabel *meuPrimeiroLabel;
    IBOutlet UITextField *meuPrimeiroTextField;
    IBOutlet UITextField *meuSegundoTextField;
    IBOutlet UIImageView *imageView;

}
- (IBAction)olaMundo:(id)sender;
- (IBAction)sliderValueChanged:(id)sender;
@end
