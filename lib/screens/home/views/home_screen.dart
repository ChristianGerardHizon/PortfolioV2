import 'package:flutter/material.dart';
import '../../../widgets/responsive.dart';
import '../home.dart';
import 'home_mobile.dart';
import 'home_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      web: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 750),
        child: const HomeWeb(),
      ),
      tab: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 750),
        child: const HomeTab(),
      ),
      mobile: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 750),
        child: const HomeMobile(),
      ),
    );
  }
}
