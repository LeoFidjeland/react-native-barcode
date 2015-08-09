#import "LFQRCode.h"
#import "RCTConvert.h"
#import <UIKit/UIKit.h>
#import <CoreImage/CoreImage.h>
#import <CoreGraphics/CoreGraphics.h>

@implementation LFQRCode{
    UIImageView *_image;
    CIImage *_qrImage;
}

-(void)setContent:(NSString *)content
{
    if (_image) {
        [_image removeFromSuperview];
    }
    
    
    NSDictionary *dic = @{
                          @"inputMessage" : [content dataUsingEncoding:NSUTF8StringEncoding],
                          };
    
    CIFilter *filter = [CIFilter filterWithName:@"CIQRCodeGenerator" withInputParameters:dic];
    _qrImage = [filter outputImage];
    
    _image = [[UIImageView alloc] init];
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    double scaleX = self.bounds.size.width / _qrImage.extent.size.width;
    double scaleY = self.bounds.size.height / _qrImage.extent.size.height;
    
    CIImage *transformedImage = [_qrImage imageByApplyingTransform:CGAffineTransformMakeScale(scaleX, scaleY)];
    
    [_image setImage:[UIImage imageWithCIImage:transformedImage]];
    
    _image.frame = self.bounds;
    [self insertSubview:_image atIndex:0];
}

@end
