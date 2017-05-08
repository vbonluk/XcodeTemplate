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
    
    //设置标题栏
    BJYNavTitleLabel *title = [[BJYNavTitleLabel alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
    title.text = [self translationToString:@""] ;
    self.navigationItem.titleView= title;
    
    if (_backToWorkSpace) {
        BJYButton *backBtn = [[BJYButton alloc] initWithBJYButtonType:BJYButtonTypeBack_Title titile:XFJLocalizedString(@"工作台")];
        [backBtn addTarget:self action:@selector(goBackToWorkSpace) forControlEvents:UIControlEventTouchUpInside];
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    }else{
        BJYButton *backBtn = [[BJYButton alloc] initWithBJYButtonType:BJYButtonTypeBack];
        [backBtn addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    }
    
    UIButton *rithtNavBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    rithtNavBtn.frame = CGRectMake(0, 0, 70, 30);
    [rithtNavBtn setImage:[UIImage imageNamed:@"04"] forState:UIControlStateNormal];
    [rithtNavBtn addTarget:self action:@selector(rightNavBtnMethod) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rithtNavBtn];
    
    self.view.backgroundColor = backgroundcolor;
    
    TuanGouMineRecommendListViewController* myTuanGouRecommend = [[TuanGouMineRecommendListViewController alloc] init];
    myTuanGouRecommend.title = XFJLocalizedString(@"报名");
    
    TuanGouMineRecommendListViewController* myTuanGouRecommend2 = [[TuanGouMineRecommendListViewController alloc] init];
    myTuanGouRecommend2.title = XFJLocalizedString(@"上门");
    
    TuanGouMineRecommendListViewController* myTuanGouRecommend3 = [[TuanGouMineRecommendListViewController alloc] init];
    myTuanGouRecommend3.title = XFJLocalizedString(@"预定");
    
    TuanGouMineRecommendListViewController* myTuanGouRecommend4 = [[TuanGouMineRecommendListViewController alloc] init];
    myTuanGouRecommend4.title = XFJLocalizedString(@"成交");
    
    
    NSArray *array = @[myTuanGouRecommend,myTuanGouRecommend2,myTuanGouRecommend3,myTuanGouRecommend4];
    self.viewControllers = array;
    self.selectedIndex = 0;
    self.itemTitleColor = xfjOrangeColor;
    self.indicatorInsets = UIEdgeInsetsMake(0, 8, 0, 8);
    self.indicatorColor = xfjOrangeColor;
    self.itemWidth = kDeviceWidth / array.count;
    
    [super viewDidLoad];//设置viewController在调用super之前。
    
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
/**
 *  返回
 */
-(void) goBack{
    [self.navigationController popViewControllerAnimated:YES];
    [self dismissViewControllerAnimated:YES completion:nil];
}

/**
 *  返回
 */
- (void)goBackToWorkSpace{
    if (_backToWorkSpace) {
        _backToWorkSpace();
    }
}

/**
 *  点击导航栏右边按钮
 */
- (void)rightNavBtnMethod{
    
}
/**
 *  容器 选中VC的回调方法
 *
 *  @param selectedIndex   <#selectedIndex description#>
 *  @param viewControllers <#viewControllers description#>
 */
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
