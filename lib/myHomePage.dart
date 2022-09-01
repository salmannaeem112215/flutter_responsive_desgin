import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_responsive_desgin/responsive_layout/desktopBody.dart';
import 'package:flutter_responsive_desgin/responsive_layout/mobileBody.dart';
import './responsive_layout/responsiveLayout.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final current_width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ResponsiveLayout(
        desktopLayout: DesktopBody(),
        mobileLayout: MobileBody(),
      ),
    );
  }
}
