//
//  ViewController.m
//  HelloWorld
//
//  Created by Sheeraz on 7/16/24.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *testLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)testButtonTapped:(id)sender {
    
    // never experiment on biological object always at animals
    // self.testLabel.text = @"It worked!";
    
    /*
    
    int height_feet = 5;
    int height_inches = 11; // I'm 5ft 11in
    
    // wow people party k choot wale baal
    // double height_cm = ((height_feet * 12.0) * height_inches) * 2.54; // 1in is 2.54 cm
    double height_cm = ((height_feet * 12.0) + height_inches) * 2.54; // 1in is 2.54 cm
    
    self.testLabel.text = [NSString stringWithFormat:@"%f", height_cm];
    
    */
    
    // I'm 5ft 11in
    int height_feet = 5;
    int height_inches = 11;
    
    // 1in is 2.54 cm
    double height_cm = ((height_feet * 12.0) + height_inches) * 2.54;
   
    /*
    
    if (height_cm > 200.00) {
        
        self.testLabel.text = @"You are over 2 meters tall!";
        
    } else {
    
        self.testLabel.text = @"You are under 2 meters tall!";
    }
     
    */
    
    /*
    
    if (height_cm > 100.00) {
        
        self.testLabel.text = @"You are over 1 meters tall!";
        
    } else {
    
        self.testLabel.text = @"You are under 1 meters tall!";
    }
    
    */
    
    /*
     
    if (height_cm > 200.00) {
        
        self.testLabel.text = @"You are over 2 meters tall!";
        
    } else if (height_cm > 100.00) {
        
        self.testLabel.text = @"You are over 1 meters tall!";
        
    } else {
    
        self.testLabel.text = @"You are under 1 meters tall!";
    }
    
    */
    
    if (0) {
        
        self.testLabel.text = @" 0 is true";
        
    } else if (2) {
        
        self.testLabel.text = @" 2 is true";
        
    } else {
        
        self.testLabel.text = @" neither 0 nor 2 is true";
    }
    
    int A = 0;
    int B = 1;
    int C = 2;
    int D = 3;
    
    
    // 1. false
    NSLog(@"%i", A);
    
    // 2. true
    NSLog(@"%i", B);

    // 3. false
    NSLog((A && B) ? @"True" : @"False");
    
    // 4. true
    NSLog((A || B) ? @"True" : @"False");
    
    // 5. true
    NSLog(((A > B) || (C < D)) ? @"True" : @"False");
    
    // 6. false
    NSLog((B == D) ? @"True" : @"False");
    
    // 7. false
    NSLog((!D) ? @"True" : @"False");
    
    // 8. true
    NSLog((!(C > D) && (A != C)) ? @"True" : @"False");
    
}


@end
