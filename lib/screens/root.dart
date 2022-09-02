import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../core/core.dart';
import '../widgets/widgets.dart';
import 'about/views/about_me_screen.dart';
import 'experience/views/experience_screen.dart';
import 'home/home.dart';
import 'screens.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({
    super.key,
  });

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final scrollCtrl = getIt<AutoScrollController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .5,
        backgroundColor: Colors.white,
        flexibleSpace: const ResponsiveLayout(
          web: Header(),
          tab: Header(),
          mobile: HeaderMobile(),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1800),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final scrWidth = constraints.maxWidth;
              final isMobile = scrWidth < 950;

              return Row(
                children: [
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: !isMobile ? const SocialButtons() : Container(),
                  ),
                  Expanded(
                    child: ListView(
                      controller: scrollCtrl,
                      children: [
                        // if (kDebugMode)
                        //   Align(
                        //     child: Text(scrWidth.toString()),
                        //   )  // if (kDebugMode)
                        //   Align(
                        //     child: Text(scrWidth.toString()),
                        //   ),
                        const HomeScreen(),
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
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: !isMobile ? const EmailDetails() : Container(),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
