import 'package:flutter/material.dart';

import '../../../widgets/responsive.dart';
import 'views.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      web: ConstrainedBox(
        constraints: const BoxConstraints(),
        child: const ProjectWeb(),
      ),
      tab: ConstrainedBox(
        constraints: const BoxConstraints(),
        child: const ProjectTab(),
      ),
      mobile: ConstrainedBox(
        constraints: const BoxConstraints(),
        child: const ProjectMobile(),
      ),
    );
  }
}
