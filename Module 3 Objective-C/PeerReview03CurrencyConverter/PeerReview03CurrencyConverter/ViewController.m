//
//  ViewController.m
//  PeerReview03CurrencyConverter
//
//  Created by Sheeraz on 7/26/24.
//

#import "ViewController.h"
#import "CurrencyRequest/CRCurrencyRequest.h"
#import "CurrencyRequest/CRCurrencyResults.h"

@interface ViewController () <CRCurrencyRequestDelegate>

@property (nonatomic) CRCurrencyRequest *currencyRequest;
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UIButton *convertButton;
@property (weak, nonatomic) IBOutlet UILabel *currencyA;
@property (weak, nonatomic) IBOutlet UILabel *currencyB;
@property (weak, nonatomic) IBOutlet UILabel *currencyC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)buttonTapped:(id)sender {
    
    self.currencyRequest = [[CRCurrencyRequest alloc] init];
    self.currencyRequest.delegate = self;
    [self.currencyRequest start];
    
    //    self.convertButton.enabled = NO;
    //    self.currencyA.text = @"A";
    //    self.currencyB.text = @"B";
    //    self.currencyC.text = @"C";
    //    self.convertButton.enabled = YES;


}

- (void)currencyRequest:(CRCurrencyRequest *)req retrievedCurrencies:(CRCurrencyResults *)currencies {
    
    self.convertButton.enabled = YES;
    //    self.currencyA.text = @"Round Trip";
    
    double inputValue = [self.inputField.text floatValue];
    
    double euroValue = inputValue * currencies.EUR;
    double yenValue = inputValue * currencies.JPY;
    double gbpValue = inputValue * currencies.GBP;
    
    NSString *temporary = [NSString stringWithFormat:@"%.2f", euroValue];
    NSString *temporaryTwo = [NSString stringWithFormat:@"%.2f", yenValue];
    NSString *temporaryThree = [NSString stringWithFormat:@"%.2f", gbpValue];

    self.currencyA.text = temporary;
    self.currencyB.text = temporaryTwo;
    self.currencyC.text = temporaryThree;
    
}

@end
