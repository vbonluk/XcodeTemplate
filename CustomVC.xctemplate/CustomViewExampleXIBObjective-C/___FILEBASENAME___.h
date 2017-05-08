//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

___IMPORTHEADER_cocoaTouchSubclass___

#import "ViewDesignable_OC.h"

//记得 因为使用了 Tap Guesture 所以 loadNibNamed 方法要用firstObject，因为lastObject是Tap Guesture

@interface ___FILEBASENAMEASIDENTIFIER___ : UIView



@property (weak, nonatomic) IBOutlet UIView *bgView;
@property (weak, nonatomic) IBOutlet ViewDesignable_OC *mainView;
@property (weak, nonatomic) IBOutlet UIButton *cancelBtn;

- (IBAction)goCancel:(id)sender;

- (IBAction)goTapBgView:(id)sender;







@end
