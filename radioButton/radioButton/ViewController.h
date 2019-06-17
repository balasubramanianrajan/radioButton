//
//  ViewController.h
//  radioButton
//
//  Created by Balasubramanian on 2/22/17.
//  Copyright © 2017 Balasubramanian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RadioButton.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet RadioButton* radioButton;
@property (nonatomic, strong) IBOutlet UIButton *radioNewButton;
@property (nonatomic, strong) IBOutlet UILabel* statusLabel;
-(IBAction)onRadioBtn:(id)sender;


@property (nonatomic, strong) IBOutlet RadioButton* maleButton;
-(IBAction)onInvertBtn:(id)sender;

@end

