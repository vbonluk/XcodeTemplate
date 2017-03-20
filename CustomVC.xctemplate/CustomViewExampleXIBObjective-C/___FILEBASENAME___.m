//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

@implementation ___FILEBASENAMEASIDENTIFIER___


- (void)awakeFromNib{
    [super awakeFromNib];
    
    _mainView.alpha = 0;
    _bgView.alpha = 0;
    _cancelBtn.alpha = 0;
    
    [UIView animateWithDuration:0.25 animations:^{
        _mainView.alpha = 1;
        _cancelBtn.alpha = 1;
        _bgView.alpha = 0.5;
    } completion:nil];
    
}

- (void)goBack{
    [UIView animateWithDuration:.25 animations:^{
        _mainView.alpha = 0;
        _cancelBtn.alpha = 0;
        _bgView.alpha = 0;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

- (IBAction)goCancel:(id)sender {
    [self goBack];
}

- (IBAction)goTapBgView:(id)sender;{
    [self goBack];
}

@end
