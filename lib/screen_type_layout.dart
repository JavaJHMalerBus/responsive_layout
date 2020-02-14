import 'package:flutter/material.dart';
import 'package:hvgg/enums/device_screen_type.dart';
import 'package:hvgg/ui/responsive/responsive_builder.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ScreenTypeLayout({
    Key key,
    this.mobile,
    this.tablet,
    this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceScreenType.Tablet) {
        if (tablet != null) return tablet;
      }

      if (sizingInformation.deviceScreenType == DeviceScreenType.Desktop) {
        return desktop ?? tablet;
      }
      return mobile;
    });
  }
}
