import 'package:flutter/material.dart';

import '../../../widgets/responsive.dart';
import '../experience.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      web: ExperienceWeb(),
      mobile: ExperienceWeb(),
      tab: ExperienceWeb(),
    );
  }
}
