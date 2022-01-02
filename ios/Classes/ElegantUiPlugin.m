#import "ElegantUiPlugin.h"
#if __has_include(<elegant_ui/elegant_ui-Swift.h>)
#import <elegant_ui/elegant_ui-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "elegant_ui-Swift.h"
#endif

@implementation ElegantUiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftElegantUiPlugin registerWithRegistrar:registrar];
}
@end
