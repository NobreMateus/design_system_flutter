import 'package:flutter/material.dart';

/// Class to build Responsive SBB Layouts.
///
/// contains the SBB Breakpoints defined here:
/// https://github.com/sbb-design-systems/sbb-angular/blob/master/src/angular/breakpoints.md
///
/// may be used for static bool usage or as a layout builder
/// with mobile, tablet and desktop option
class SBBResponsive extends StatelessWidget {
  const SBBResponsive({Key? key}) : super(key: key);

  static int mobileBreakpoint = 643;
  static int tabletBreakpoint = 1025;
  static int desktopBreakpoint = 1281;
  static int desktopLargeBreakpoint = 1441;
  static int desktop2kBreakpoint = 2561;
  static int desktop4kBreakpoint = 3841;

  /// returns whether given context size is less than [mobileBreakpoint]
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mobileBreakpoint;

  /// returns whether given context size is less than [tabletBreakpoint]
  /// and more than [mobileBreakpoint]
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= mobileBreakpoint &&
      MediaQuery.of(context).size.width < tabletBreakpoint;

  /// returns whether given context size is greater than [tabletBreakpoint]
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= tabletBreakpoint;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
