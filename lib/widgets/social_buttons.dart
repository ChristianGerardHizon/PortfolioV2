import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(flex: 4, child: Container()),

          ///
          /// Email
          ///
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.stackOverflow,
            ),
          ),
          const SizedBox(height: 20),

          ///
          /// Facebook
          ///
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.facebook,
            ),
          ),
          const SizedBox(height: 20),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.linkedinIn,
            ),
          ),
          const SizedBox(height: 20),

          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.github,
            ),
          ),

          const SizedBox(height: 20),

          ///
          /// Divider
          ///
          const Flexible(flex: 2, child: VerticalDivider()),
        ],
      ),
    );
  }
}
