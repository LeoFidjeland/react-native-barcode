#import "LFAztecCode.h"
#import "RCTConvert.h"
#import <UIKit/UIKit.h>
#import <CoreImage/CoreImage.h>
#import <CoreGraphics/CoreGraphics.h>

@implementation LFAztecCode{
    UIImageView *_image;
    CIImage *_aztecImage;
}

-(void)setContent:(NSString *)content
{
    if (_image) {
        [_image removeFromSuperview];
    }
    
    
    NSDictionary *dic = @{
                          @"inputMessage" : [content dataUsingEncoding:NSUTF8StringEncoding],
                                };
    
    CIFilter *filter = [CIFilter filterWithName:@"CIAztecCodeGenerator" withInputParameters:dic];
    _aztecImage = [filter outputImage];
    
    _image = [[UIImageView alloc] init];
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    double scaleX = self.bounds.size.width / _aztecImage.extent.size.width;
    double scaleY = self.bounds.size.height / _aztecImage.extent.size.height;
    
    CIImage *transformedImage = [_aztecImage imageByApplyingTransform:CGAffineTransformMakeScale(scaleX, scaleY)];

    [_image setImage:[UIImage imageWithCIImage:transformedImage]];

    _image.frame = self.bounds;
    [self insertSubview:_image atIndex:0];
}

@end
