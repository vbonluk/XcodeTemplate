//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"
#import "UITableView+FDTemplateLayoutCell.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@property (copy , nonatomic)NSString *mainRequestUrl;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark - LifeCyle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置标题栏
    BJYNavTitleLabel *title = [[BJYNavTitleLabel alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
    title.text = [self translationToString:@""] ;
    self.navigationItem.titleView= title;
    
    BJYButton *backBtn = [[BJYButton alloc] initWithBJYButtonType:BJYButtonTypeBack];
    [backBtn addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    
    self.view.backgroundColor = backgroundcolor;
    
#warning 注意编写这里
    [self.dataTableView registerNib:[UINib nibWithNibName:@"NewHouseCell" bundle:nil] forCellReuseIdentifier:@"NewHouseCell"];
    
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

#pragma mark - tableView dataSources && delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;{
    return self.paginator.results.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;{
    static NSString *cellID = @"NewHouseCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"NewHouseCell" owner:self options:nil] lastObject];
    }
    
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;{
    return [tableView fd_heightForCellWithIdentifier:@"NewHouseCell" configuration:^(UITableViewCell* cell) {
        
    }];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - fetchResultsWithPage
- (void)fetchResultsWithPage:(NSInteger)page pageSize:(NSInteger)pageSize{
    NSString *token=[[NSUserDefaults standardUserDefaults] objectForKey:AGENT_TOKEN];
    
    _mainRequestUrl = [NSString stringWithFormat:@""];
    [self get:_mainRequestUrl params:nil dialog:NO];
}

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

@end
