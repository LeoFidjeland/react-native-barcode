#import "LFAztecCodeManager.h"
#import "LFAztecCode.h"

@implementation LFAztecCodeManager

RCT_EXPORT_MODULE();

- (RCTView *)view
{
  return [[LFAztecCode alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(content, NSString);

@end
