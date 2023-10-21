import 'package:flutter/material.dart';

class ResposiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const ResposiveLayout({
    Key? key,
    required this.mobileScreenLayout,
    required this.webScreenLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return webScreenLayout;
          // WEB SCREEN
        } else {
          return mobileScreenLayout;
          // MOBILE SCREEN
        }
      },
    );
  }
}
