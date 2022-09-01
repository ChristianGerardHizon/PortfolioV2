import 'package:flutter/material.dart';

import '../../../widgets/responsive.dart';
import 'views.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      web: ContactWeb(),
      tab: ContactWeb(),
      mobile: ContactWeb(),
    );
  }
}
