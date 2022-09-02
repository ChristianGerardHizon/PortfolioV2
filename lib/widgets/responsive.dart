import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    this.web,
    this.tab,
    this.mobile,
  });

  final Widget? web;
  final Widget? tab;
  final Widget? mobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final scrWidth = constraints.maxWidth;

        if (scrWidth > 1024) {
          return SizedBox(
            width: scrWidth,
            child: web,
          );
        }

        if (scrWidth < 650) {
          return SizedBox(
            width: scrWidth,
            child: mobile,
          );
        }
        return SizedBox(
          width: scrWidth,
          child: tab,
        );
      },
    );
  }
}
