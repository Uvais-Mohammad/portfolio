import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {Key? key, required this.desktopView, this.mobileView, this.tabletView})
      : super(key: key);

  final Widget desktopView;
  final Widget? mobileView;
  final Widget? tabletView;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return desktopView;
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return tabletView ?? desktopView;
      } else {
        return mobileView ?? desktopView;
      }
    });
  }

  static bool isSmallScreen(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return mediaQuery.size.width < 600;
  }

  static bool isMediumScreen(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return mediaQuery.size.width > 600 && mediaQuery.size.width < 900;
  }

  static bool isLargeScreen(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return mediaQuery.size.width > 900;
  }
}
