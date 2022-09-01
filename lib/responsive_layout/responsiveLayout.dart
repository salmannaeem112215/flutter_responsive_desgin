import './dimension.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final mobileLayout;
  final desktopLayout;

  const ResponsiveLayout({this.mobileLayout, this.desktopLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobileWidth) {
        return mobileLayout;
      } else {
        return desktopLayout;
      }
    });
  }
}
