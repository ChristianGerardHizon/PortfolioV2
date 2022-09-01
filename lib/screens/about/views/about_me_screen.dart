import 'package:flutter/material.dart';

import '../../../widgets/responsive.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      web: Text('About Me'),
    );
  }
}
