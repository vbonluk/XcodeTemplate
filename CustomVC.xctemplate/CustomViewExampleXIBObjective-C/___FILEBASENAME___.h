//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

___IMPORTHEADER_cocoaTouchSubclass___

#import "ViewDesignable_OC.h"

@interface ___FILEBASENAMEASIDENTIFIER___ : UIView



@property (weak, nonatomic) IBOutlet UIView *bgView;
@property (weak, nonatomic) IBOutlet ViewDesignable_OC *mainView;
@property (weak, nonatomic) IBOutlet UIButton *cancelBtn;

- (IBAction)goCancel:(id)sender;

- (IBAction)goTapBgView:(id)sender;







@end
