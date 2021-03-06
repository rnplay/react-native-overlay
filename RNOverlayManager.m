#import "RNOverlayManager.h"
#import "RNOverlay.h"
#import "RCTBridge.h"

@implementation RNOverlayManager

RCT_EXPORT_MODULE();

@synthesize bridge = _bridge;

- (UIView *)view
{
  return [[RNOverlay alloc] initWithBridge:_bridge];
}

RCT_EXPORT_VIEW_PROPERTY(isVisible, BOOL);
RCT_EXPORT_VIEW_PROPERTY(aboveStatusBar, BOOL);

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}


@end
