import 'package:flutter/material.dart';
import 'package:flutter_responsive/tabletview.dart';
import 'desktopview.dart';
import 'mobileview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 1024) {
            return DesktopView();
          } else if (constraints.maxWidth >= 768) {
            return TabletView();
          } else {
            return MobileView();
          }
        },
      ),
    );
  }
}
