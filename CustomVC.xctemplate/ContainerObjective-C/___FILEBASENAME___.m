//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

//@property (copy , nonatomic)NSString *mainRequestUrl;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark - LifeCyle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置标题栏
    BJYNavTitleLabel *title = [[BJYNavTitleLabel alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
    title.text = XFJLocalizedString(@"标题") ;
    self.navigationItem.titleView= title;
    
    BJYButton *backBtn = [[BJYButton alloc] initWithBJYButtonType:BJYButtonTypeBack];
    [backBtn addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    
    self.view.backgroundColor = backgroundcolor;
    
    NSString *token=[[NSUserDefaults standardUserDefaults] objectForKey:AGENT_TOKEN];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
}

-(void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
}

#pragma mark - Other Method
- (void)goBack{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didSelectIndex:(NSInteger)selectedIndex viewControllers:(NSArray *)viewControllers{
    if (selectedIndex == 0) {
        ((BasePageViewController *)viewControllers[0]).dataTableView.scrollsToTop = YES;
        ((BasePageViewController *)viewControllers[1]).dataTableView.scrollsToTop = NO;
    }else if(selectedIndex == 1){
        ((BasePageViewController *)viewControllers[0]).dataTableView.scrollsToTop = NO;
        ((BasePageViewController *)viewControllers[1]).dataTableView.scrollsToTop = YES;
    }
}

/*
#pragma mark - callback delegate
- (void)callbackSuccess:(NSString *)url data:(id)extendData{
    dispatch_async(dispatch_get_main_queue(), ^{
        if ([url isEqualToString:_mainRequestUrl]) {
            NSDictionary *result = (NSDictionary*)extendData;
            
        }else if ([url isEqualToString:@""]){
            NSDictionary *result = (NSDictionary*)extendData;
            
        }
    });
}
 */

@end
