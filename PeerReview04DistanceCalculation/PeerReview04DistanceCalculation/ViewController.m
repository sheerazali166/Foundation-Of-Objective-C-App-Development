//
//  ViewController.m
//  PeerReview04DistanceCalculation
//
//  Created by Sheeraz on 7/27/24.
//

#import "ViewController.h"
#import "DistanceGetter/DGDistanceRequest.h"


@interface ViewController ()

@property (nonatomic) DGDistanceRequest *dgDistanceRequest;

@property (weak, nonatomic) IBOutlet UITextField *startLocation;

@property (weak, nonatomic) IBOutlet UITextField *endLocationA;
@property (weak, nonatomic) IBOutlet UILabel *distanceA;

@property (weak, nonatomic) IBOutlet UITextField *endLocationB;
@property (weak, nonatomic) IBOutlet UILabel *distanceB;

@property (weak, nonatomic) IBOutlet UITextField *endLocationC;
@property (weak, nonatomic) IBOutlet UILabel *distanceC;

@property (weak, nonatomic) IBOutlet UIButton *calculateDistancesButton;

@property (weak, nonatomic) IBOutlet UISegmentedControl *uiSegmentControllerUnitChanger;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)calculateButtonTapped:(id)sender {
    
    // self.distanceB.text = @"It's not working\n Just use my work";

    // self.distanceC.text = @"It Worked";
   
    self.calculateDistancesButton.enabled = NO;
    
    self.dgDistanceRequest = [DGDistanceRequest alloc];
    
    NSString *nsStringStartDestination = self.startLocation.text;
    NSString *nsStringDestinationA = self.endLocationA.text;
    NSString *nsStringDestinationB = self.endLocationB.text;
    NSString *nsStringDestinationC = self.endLocationC.text;
    
    NSArray *nsArrayDestinations = @[nsStringDestinationA, nsStringDestinationB, nsStringDestinationC];
    
    self.dgDistanceRequest = [self.dgDistanceRequest initWithLocationDescriptions:nsArrayDestinations sourceDescription:nsStringStartDestination];
    
    __weak ViewController *viewControllerWeakSelf = self;
    
    
    self.dgDistanceRequest.callback = ^void(NSArray *nsArrayResponses) {
        
        ViewController *viewControllerStrongSelf = viewControllerWeakSelf;
        
        if (!viewControllerStrongSelf) return;
        
        NSNull *nsNullBadResult = [NSNull null];
        
        if (nsArrayResponses[0] != nsNullBadResult) {
        
            if(viewControllerStrongSelf.uiSegmentControllerUnitChanger.selectedSegmentIndex == 0) {
                
                double doubleNumber = ([nsArrayResponses[0] floatValue] / 1.0);
                
                NSString *nsStringX = [NSString stringWithFormat:@"%.2f metters", doubleNumber];
                
                viewControllerStrongSelf.distanceA.text = nsStringX;

                
            } else if(viewControllerStrongSelf.uiSegmentControllerUnitChanger.selectedSegmentIndex == 1) {
                
                double doubleNumber = ([nsArrayResponses[0] floatValue] / 1000.0);
                
                NSString *nsStringX = [NSString stringWithFormat:@"%.2f km", doubleNumber];
                
                viewControllerStrongSelf.distanceA.text = nsStringX;

                
            } else if(viewControllerStrongSelf.uiSegmentControllerUnitChanger.selectedSegmentIndex == 2) {
                
                double doubleNumber = ([nsArrayResponses[0] floatValue] * 1609.34);
                
                NSString *nsStringX = [NSString stringWithFormat:@"%.2f miles", doubleNumber];
                
                viewControllerStrongSelf.distanceA.text = nsStringX;

                
        }
            
        } else {
            
            viewControllerStrongSelf.distanceA.text = @"Error";
        }
        

        if (nsArrayResponses[1] != nsNullBadResult) {
        
            if(viewControllerStrongSelf.uiSegmentControllerUnitChanger.selectedSegmentIndex == 0) {
                
                double doubleNumber = ([nsArrayResponses[1] floatValue] / 1.0);
                
                NSString *nsStringX = [NSString stringWithFormat:@"%.2f metters", doubleNumber];
                
                viewControllerStrongSelf.distanceB.text = nsStringX;

                
            } else if(viewControllerStrongSelf.uiSegmentControllerUnitChanger.selectedSegmentIndex == 1) {
                
                double doubleNumber = ([nsArrayResponses[1] floatValue] / 1000.0);
                
                NSString *nsStringX = [NSString stringWithFormat:@"%.2f km", doubleNumber];
                
                viewControllerStrongSelf.distanceB.text = nsStringX;

                
            } else if(viewControllerStrongSelf.uiSegmentControllerUnitChanger.selectedSegmentIndex == 2) {
                
                double doubleNumber = ([nsArrayResponses[1] floatValue] * 1609.34);
                
                NSString *nsStringX = [NSString stringWithFormat:@"%.2f miles", doubleNumber];
                
                viewControllerStrongSelf.distanceB.text = nsStringX;

                
        }
            
        } else {
            
            viewControllerStrongSelf.distanceB.text = @"Error";
        }
        

        if (nsArrayResponses[2] != nsNullBadResult) {
        
            if(viewControllerStrongSelf.uiSegmentControllerUnitChanger.selectedSegmentIndex == 0) {
                
                double doubleNumber = ([nsArrayResponses[2] floatValue] / 1.0);
                
                NSString *nsStringX = [NSString stringWithFormat:@"%.2f metters", doubleNumber];
                
                viewControllerStrongSelf.distanceC.text = nsStringX;

                
            } else if(viewControllerStrongSelf.uiSegmentControllerUnitChanger.selectedSegmentIndex == 1) {
                
                double doubleNumber = ([nsArrayResponses[2] floatValue] / 1000.0);
                
                NSString *nsStringX = [NSString stringWithFormat:@"%.2f km", doubleNumber];
                
                viewControllerStrongSelf.distanceC.text = nsStringX;

                
            } else if(viewControllerStrongSelf.uiSegmentControllerUnitChanger.selectedSegmentIndex == 2) {
                
                double doubleNumber = ([nsArrayResponses[2] floatValue] * 1609.34);
                
                NSString *nsStringX = [NSString stringWithFormat:@"%.2f miles", doubleNumber];
                
                viewControllerStrongSelf.distanceC.text = nsStringX;

                
        }
            
        } else {
            
            viewControllerStrongSelf.distanceC.text = @"Error";
        }
        

        
        //viewControllerStrongSelf.distanceC.text = @"callback";
        
        viewControllerStrongSelf.dgDistanceRequest = nil;
            
        viewControllerStrongSelf.calculateDistancesButton.enabled = YES;
    };
    
    [self.dgDistanceRequest start];
}




@end
