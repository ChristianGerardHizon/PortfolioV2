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
        var height = constraints.maxHeight;
        final scrWidth = constraints.minWidth;
        if (height > 1000) height = 1000;

        if (scrWidth > 915) {
          return SizedBox(
            height: height,
            width: scrWidth,
            child: web,
          );
        } else if (scrWidth < 650) {
          return SizedBox(
            height: height,
            width: scrWidth,
            child: mobile,
          );
        }
        return SizedBox(
          height: height,
          width: scrWidth,
          child: tab,
        );
      },
    );
  }
}
