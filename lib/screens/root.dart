import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../core/core.dart';
import '../widgets/widgets.dart';
import 'about/views/about_me_screen.dart';
import 'experience/views/experience_screen.dart';
import 'screens.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({
    super.key,
    required this.type,
  });

  final ScreenType type;

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final scrollCtrl = getIt<AutoScrollController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SocialButtons(),
          Expanded(
            child: ListView(
              controller: scrollCtrl,
              children: [
                const Header(),
                AutoScrollTag(
                  index: 0,
                  key: const ValueKey(0),
                  controller: scrollCtrl,
                  child: const AboutMeScreen(),
                ),
                AutoScrollTag(
                  index: 1,
                  key: const ValueKey(1),
                  controller: scrollCtrl,
                  child: const ExperienceScreen(),
                ),
                AutoScrollTag(
                  index: 2,
                  key: const ValueKey(2),
                  controller: scrollCtrl,
                  child: const ProjectScreen(),
                ),
                AutoScrollTag(
                  index: 3,
                  key: const ValueKey(3),
                  controller: scrollCtrl,
                  child: const ContactScreen(),
                ),
                const Footer(),
              ],
            ),
          ),
          const EmailDetails(),
        ],
      ),
    );
  }
}
