#import "LFQRCodeManager.h"
#import "LFQRCode.h"

@implementation LFQRCodeManager

RCT_EXPORT_MODULE();

- (RCTView *)view
{
  return [[LFQRCode alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(content, NSString);

@end
