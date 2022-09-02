import 'package:flutter/material.dart';

import '../../../widgets/responsive.dart';
import '../about.dart';
import 'about_me_web.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      web: AboutMeWeb(),
      tab: AboutMeTab(),
      mobile: AboutMeMobile(),
    );
  }
}
