import 'package:flutter/material.dart';

import '../../../widgets/responsive.dart';
import 'views.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 40),
      child: ResponsiveLayout(
        web: ProjectWeb(),
        tab: ProjectWeb(),
        mobile: ProjectWeb(),
      ),
    );
  }
}
