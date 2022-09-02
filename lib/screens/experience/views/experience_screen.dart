import 'package:flutter/material.dart';

import '../../../widgets/responsive.dart';
import '../experience.dart';
import 'experience_mobile.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      web: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 750),
        child: const ExperienceWeb(),
      ),
      mobile: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 700),
        child: const ExperienceMobile(),
      ),
      tab: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 750),
        child: const ExperienceTab(),
      ),
    );
  }
}
