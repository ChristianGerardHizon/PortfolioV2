import 'package:flutter/material.dart';

import '../../../widgets/responsive.dart';
import 'views.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      web: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 750),
        child: const ContactWeb(),
      ),
      tab: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 750),
        child: const ContactTab(),
      ),
      mobile: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 750),
        child: const ContactMobile(),
      ),
    );
  }
}
