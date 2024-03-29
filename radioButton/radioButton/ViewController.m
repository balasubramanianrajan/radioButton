//
//  ViewController.m
//  radioButton
//
//  Created by Balasubramanian on 2/22/17.
//  Copyright © 2017 Balasubramanian. All rights reserved.
//

#import "ViewController.h"
#import "RadioButton.h"


@interface ViewController ()

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
-(IBAction)onRadioBtn:(RadioButton*)sender
{
    //_statusLabel.text = [NSString stringWithFormat:@"Selected: %@", sender.titleLabel.text];
    
    if(self.radioButton.tag == 1)
    {
        _statusLabel.text = @"prod";
    }
    
}


-(IBAction)onInvertBtn:(id)sender
{
    _maleButton.selected = !_maleButton.selected;
}


-(IBAction)onCreateMoreButtons:(id)sender
{
    [sender setHidden:YES];
    
    NSMutableArray* buttons = [NSMutableArray arrayWithCapacity:3];
    CGRect btnRect = CGRectMake(25, 320, 100, 30);
    for (NSString* optionTitle in @[@"Red", @"Green", @"Blue"]) {
        RadioButton* btn = [[RadioButton alloc] initWithFrame:btnRect];
        [btn addTarget:self action:@selector(onRadioButtonValueChanged:) forControlEvents:UIControlEventValueChanged];
        btnRect.origin.y += 40;
        [btn setTitle:optionTitle forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont boldSystemFontOfSize:17];
        [btn setImage:[UIImage imageNamed:@"unchecked.png"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"checked.png"] forState:UIControlStateSelected];
        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        btn.titleEdgeInsets = UIEdgeInsetsMake(0, 6, 0, 0);
        [self.view addSubview:btn];
        [buttons addObject:btn];
    }
    
    [buttons[0] setGroupButtons:buttons]; // Setting buttons into the group
    
    [buttons[0] setSelected:YES]; // Making the first button initially selected
}

-(void) onRadioButtonValueChanged:(RadioButton*)sender
{
    // Lets handle ValueChanged event only for selected button, and ignore for deselected
    if(sender.selected) {
        NSLog(@"Selected color: %@", sender.titleLabel.text);
    }
}


@end
